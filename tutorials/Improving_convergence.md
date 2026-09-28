---
title: "Improving convergence, 1"
author: "Peter Ralph"
date: "Sun Sep 27 20:18:30 2026"
---


``` r
fig.dim <- 4
knitr::opts_chunk$set(fig.width=2*fig.dim,
                      fig.height=fig.dim,
                      fig.align='center')
```


# The Problem

In the file [mice_and_foxes2.tsv](mice_and_foxes2.tsv) we have (fake) data
consisting of the total number of mice and foxes on a certain large island across 100 years.
We're fitting a *Lotka-Volterra*-type model to these data,
in which mice reproduce, but are eaten by foxes,
and fox reproduction rate depends on how many mice they eat.
Skipping over a lot of details,
we'd like to fit the following model of how next year's numbers of mice ($M_{t+1}$) and foxes ($F_{t+1}$)
depend on the current year's numbers ($M_t$ and $F_t$):
$$\begin{aligned}
    r_t &= \exp(- \epsilon F_t) \\
    M_{t+1} &\sim \Poisson( (\lambda + r_t) M_t ) \\
    F_{t+1} &\sim \Poisson( p F_t + \gamma (1 - r_t) M_t ) .
\end{aligned}$$
In this model, the parameters are:

- $r = \exp(-\epsilon F)$ is the chance that a mouse escapes all foxes when there are $F$ foxes, and so
- $\epsilon$ is the per fox encounter rate, scaled
- $\lambda$ is the per capita mouse fecundity
- $p$ is the probability of survival until the next year for each fox
- $\gamma$ is the conversion rate from mice eaten to baby foxes



```
## Loading required package: StanHeaders
```

```
## 
## rstan version 2.32.7 (Stan version 2.32.2)
```

```
## For execution on a local, multicore CPU with excess RAM we recommend calling
## options(mc.cores = parallel::detectCores()).
## To avoid recompilation of unchanged Stan programs, we recommend calling
## rstan_options(auto_write = TRUE)
## For within-chain threading using `reduce_sum()` or `map_rect()` Stan functions,
## change `threads_per_chain` option:
## rstan_options(threads_per_chain = 1)
```

We'll test the model on some simulated data:
it will be very helpful in debugging what's going to know what the true set of parameters is!

``` r
sim_params <- list(
                   lambda = 0.85, # prey fecundity per year
                   lsurv = 0.4,   # predator survival prob
                   erate = .001,     # pred-prey encounter rate
                   conv = 0.8,    # prey->pred conversion rate
                   T = 100  # number of time steps
               )

set.seed(123)
MF <- run_sim(c(1200, 1000), sim_params)

matplot(MF$year, MF[,2:3], type='l', xlab='time', ylab='population', lty=2)
legend("topright", lty=1, col=1:2, legend=c("mice", "foxes"))
```

<div class="figure" style="text-align: center">
<img src="figure/Improving_convergence/r do_sim-1.png" alt="plot of chunk r do_sim"  />
<p class="caption">plot of chunk r do_sim</p>
</div>

And, here's a Stan model - this is just copied from above,
with some Normal priors.
(The reason for e.g. `vM` is that `M` is an integer array, as it must be, to have a Poisson distribution,
so when we use `M` in the expression for the Poisson's mean we need to convert it to a vector.)

``` r
pp_block <- "
data {
    int N;
    int M[N];
    int F[N];
}
parameters {
    real<lower=0> lambda;
    real<lower=0, upper=1> lsurv;
    real<lower=0> erate;
    real<lower=0> conv;
}
model {
    vector[N-1] vM;
    vector[N-1] vF;
    vector[N-1] er;
    vM = to_vector(M[1:(N-1)]);
    vF = to_vector(F[1:(N-1)]);
    er = exp(-erate * vF);
    M[2:N] ~ poisson((lambda + er) .* vM);
    F[2:N] ~ poisson(lsurv * vF + conv * (1-er) .* vM);
    lambda ~ normal(0, 1);
    erate ~ normal(0, 1);
    conv ~ normal(0, 1);
}
"
pp_model <- stan_model(model_code=pp_block)
```

```
## Error in `stan_model()`:
## ! could not find function "stan_model"
```


Now, we'll fit the model.

``` r
pp_fit <- sampling(pp_model,
                   data=list(N=nrow(MF),
                             M=MF$mice,
                             F=MF$foxes),
                   iter=1000, chains=4,
                   control=list(max_treedepth=12))
```

```
## Error in `sampling()`:
## ! could not find function "sampling"
```

That's a bunch of warning about convergence! What happened?
Looking at the summary, we see that indeed we have a low
effective sample size (`n_eff`) and high `R_hat` for all the parameters.

``` r
rstan::summary(pp_fit)$summary
```

```
## Error in `h()`:
## ! error in evaluating the argument 'object' in selecting a method for function 'summary': object 'pp_fit' not found
```

This suggests the chains aren't mixing, and, indeed, they aren't.
Below, we see that three of the chains are merrily wantering around a chunk of parameter space...
but, chain 3 is somewhere else entirely.
Chains 1, 2, and 4 are wandering around the top of a log-likelihood hill
(you can tell it's a local likelihood maximum because they tend to stay there),
but chain 3 is in a much nicer part of parameter space,
where the log-posterior is 150 units higher there.
You can almost hear chain 3 calling "Hey, come up here! The view is pretty nice!"
down to the other chains.

``` r
stan_trace(pp_fit, pars=c("lambda", "lsurv", "erate", "conv", "lp__"))
```

```
## Error:
## ! object 'pp_fit' not found
```
Furthermore, we *know the right answer*,
and comparing to the parameters we simulated under
(`lambda = 0.85, lsurv = 0.4,`
`erate = 0.001, conv = 0.001 `),
we see that chain 3 definitely has the right idea.
How'd it get there? By including warmup in the trace plots,
we see that it just got lucky: at around iteration 250, it happened
upon the good part of parameter space.

``` r
stan_trace(pp_fit, pars=c("lambda", "lsurv", "erate", "conv", "lp__"), inc_warmup=TRUE)
```

```
## Error:
## ! object 'pp_fit' not found
```

But, how to fix it? Often, you want to look for a parameter
that *isn't moving*. Here, that's `erate`, for chain 3.
The true value of `erate` is very small: 0.001,
so it's unsurprising that chain 3 has gone right down by erate=zero and stayed there.
But why haven't the other chains got there?
It helps to know some specifics about how Stan explores parameter space.
Recall that `erate` is nonnegative:
```
    real<lower=0> erate;
```
It's awkward to keep a random walk from going over an arbitrary boundary,
so under the hood Stan does its exploration in
[*unconstrained space*](https://mc-stan.org/docs/2_25/reference-manual/variable-transforms-chapter.html),
which it gets to by a transformation.
For a parameter that is constrained to be nonnegative,
it just
[takes a logarithm](https://mc-stan.org/docs/2_25/reference-manual/lower-bound-transform-section.html):
so, it's trying out different values of `log(erate)`.
By default, it starts at locations
[chosen uniformly between -2 and 2](https://mc-stan.org/docs/2_25/reference-manual/general-config-section.html#system-random-initialization)
in the unconstrained space.
So, it's choosing starting locations for `erate` between
`exp(-2) =` 0.1353353 and `exp(2) =` 7.3890561.
These are pretty far away from the true value of 0.001.

So, we might be able to fix this by initializing the chains to start closer to zero.
But, it's a general rule of thumb in numerical work that
Everything is Nicer when All the Numbers are of Order One.
So, instead we might *rescale* `erate` by a factor of 1000 -
in other words, decide that the natural units for it are "per 1,000 foxes"
instead of "per fox". This requires only a small change to the Stan code:


``` r
pp_block2 <- "
data {
    int N;
    int M[N];
    int F[N];
}
parameters {
    real<lower=0> lambda;
    real<lower=0, upper=1> lsurv;
    real<lower=0> erate;
    real<lower=0> conv;
}
model {
    vector[N-1] vM;
    vector[N-1] vF;
    vector[N-1] er;
    vM = to_vector(M[1:(N-1)]);
    vF = to_vector(F[1:(N-1)]);
    er = exp(-erate * vF / 1000);  // RESCALED HERE
    M[2:N] ~ poisson((lambda + er) .* vM);
    F[2:N] ~ poisson(lsurv * vF + conv * (1-er) .* vM);
    lambda ~ normal(0, 1);
    erate ~ normal(0, 1);
    conv ~ normal(0, 1);
}
"
pp_model2 <- stan_model(model_code=pp_block2)
```

```
## Error in `stan_model()`:
## ! could not find function "stan_model"
```

Now, fitting it goes much nicer:

``` r
pp_fit2 <- sampling(pp_model2,
                   data=list(N=nrow(MF),
                             M=MF$mice,
                             F=MF$foxes),
                   iter=1000, chains=4,
                   control=list(max_treedepth=12))
```

```
## Error in `sampling()`:
## ! could not find function "sampling"
```

And, we're getting good estimates now.
In particular, notice that it's estimating `erate` to be right around 1.0
(95% credible interval from 0.85 to 1.08),
which is right, in the new units of "per 1,000 foxes".

``` r
rstan::summary(pp_fit2)$summary
```

```
## Error in `h()`:
## ! error in evaluating the argument 'object' in selecting a method for function 'summary': object 'pp_fit2' not found
```

If we were to dig into this more, it'd be nice to know *why* there's multiple
likelihood maxima: what was it about that other bit of parameter space
that looked good to chains 1, 2, and 4?
Unfortunately, this sort of thing is a fairly general feature of dynamical systems like this,
especially if changing some parameters can make the predicted dynamics
zip off to infinity.
Also note that in practice we won't know what the true values of parameters are,
but we can often get an idea of the right order of magnitue,
which is all we needed.

