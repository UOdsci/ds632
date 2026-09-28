---
title: "Example homework: COVID prevalence"
author: "Peter Ralph"
date: "Sun Sep 27 20:07:30 2026"
output:
    html_document:
        fig_caption: yes
---



# Introduction

The main question we would like to know is:
for a given number of randomly applied COVID tests,
how well can we estimate overall COVID prevalence -
i.e., the proportion of people in Eugene with COVID?
Some important difficulties of this problem are beyond the scope of this report,
like: how can we take a uniform random sample of all people in Eugene?
Our main goal here is to assume that this is possible,
and see what we can learn from it.
We'll also ignore false positive and negatives in testing,
as well as the fact that people can be infected for some time before testing positive.
As a result, what we're really estimating is
the proportion of the population in Eugene that, were we to give them a COVID test,
would get a positive result.

# The power of testing



To explore this problem,
we will simulate datasets by choosing a true prevalence
(which we call $\theta$) and a sample size ($n$),
then drawing from the Binomial distribution with parameters $n$ and $\theta$.
This is equivalent to flipping $n$ coins, each of which comes up "head" with probability $\theta$,
and counting the number of heads:
in other words, each person we survey has probability $\theta$ of being infected,
independently of all others.
Let's call the proportion of the simulated survey that had a positive test $\hat p$.
Then, we're interested in how close $\hat p$ is to $\theta$, and how that depends on $n$.
The results will depend on $\theta$, so we'll pick two reasonable values of $\theta$,
and show results for each; 0.2% and 2.0%.

Let's look at how close $\hat p$ tends to be to $\theta$.
The figure below shows the range of estimated prevalences
across a range of sample sizes:
the black line, grey lines, and red lines, respectively,
show the mean, middle 50%, and middle 95% of the estimated prevalences
across 400 simulated surveys.
So, for instance, the results of a new survey of sample size `n`
will fall between the grey lines above that value of `n` with probability 50%,
and between the red lines with probability 95%.
<div class="figure" style="text-align: center">
<img src="figure/HW_Example_solution/r range-1.png" alt="Range of estimated prevalences."  />
<p class="caption">Range of estimated prevalences.</p>
</div>

Here, we see that the mean always tracks the truth,
and that accuracy improves as sample size increases.
Notice that at the lower prevalence ($\theta = 0.2$%),
the grey line is at zero until around 800, indicating that with sample sizes less than this,
there is at least a 25% chance that the survey finds no cases.
This makes sense, since 0.2% is only 2 in 1,000.

# Conclusions

The results above show that, unsurprisingly,
the ability to estimate the true COVID prevalence increases with the sample size,
seen above by how the red and grey lines get closer to the true value.
At a higher prevalence (around 2%),
the estimated prevalence is unlikely to be more than 1% away from the truth
if the sample size is above 1,000.
At the lower prevalence of 0.2%,
estimates are less accurate in relative terms
(e.g., there is a reasonable probability with `n=2000` that the estimated prevalence is off by a factor of 2),
but they are at least as accurate in absolute terms
(estimates are within 1% of the truth in all cases, except perhaps below `n=100`).

