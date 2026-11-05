---
title: "Lesson plan: Week 06"
format: html
css: "plans.css"
---

# Tuesday


**Goals:**

- Think hard about hierarchical models, and sharing of power.
- Introduce MCMC as a way of sampling from the posterior.
- Get more experience with interpreting posteriors to get answers.
- Learn about the logistic-binomial model.

**Notes:**


::: {.paper}
    when                                                                                                                       slides             what          how long  
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
   begin                                                                                                                                                               .
    0:00     Reminder of posterior distributions, and how to get credible intervals                                                                               10 min
       .       write/draw on board to remind that posterior = likelihood * prior                                                                                       .
       .       and motivate that the likelihood gives relative weights of evidence; Bayes gives a distribution                                                         .
       .     Hierarchical coins: Bayesian version                                                                                                                 10 min
       .       contrast to homework, where they got an MLE for alpha, beta; here we get CIs                                                                            .
       .       thought experiment: one vs many coins? (reminder we answered this quickly last week)                                                                    .
       .       ask which of the histograms is from "one coin" vs "many"                                                                                                .
       .       thought experiment: if each coin was flipped once, could we tell?                                                                                       .
       .     Stan, and MCMC                                                                                                                                       10 min
       .       what's Stan (quick overview)                                                                                                                            .
       .       what's Monte Carlo, and what's MCMC; including saying that sim-based answers are "MC"                                                                   .
    0:30     Exercise: random walks! (and break)                                                                                                                  15 min
       .       have them walk around, in pairs, starting somewhere nearby                                                                                              .
       .     Quick preview of brms (so we can solve the coin problem!)                                                                                             5 min
       .       basically just say "now by some magic, we can get brms to do a random walk for us for this model,                                                       .
       .                                                                 see look posterior distributions"                                                             .
    1:10     Baseball: intro to the game and the dataset                                                                     baseball                             10 min
       .       Disco: how to answer these questions?                                                                                                              10 min
       .       exercise: have a look at the data                                                                                                                  10 min
       .       do some visualization live                                                                                                                         10 min
    1:50                                                                                                                                                             end
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
:::


# Thursday


**Goals:**


**Notes:**


::: {.paper}
    when                                                                                                                       slides             what          how long  
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
   begin                                                                                                                                                               .
    0:00     Baseball, continued: modeling now                                                                                 baseball                            X min
       .     The binomial model, and then the logistic binomial model                                                                                                  .
       .       fit the model without random effects, in brms                                                                                                           .
       .       talk through the checklist: convergence? interpret the parameters?                                                                                      .
       .       reminder that estimates are on a logit scale                                                                                                            .
       .     How to interpret the posterior? Answering questions.                                                                                                      .
       .     Disco: what's wrong with the model? How to make it better?                                                                                                .
       .       Ask folks to interpret the posterior predictive sim plot                                                                                                .
    0:55     break                                                                                                                                                10 min
    1:05     Exercise: make the pumpkins have plot effects and optionally fit a model to them                                                                      X min
       .     Random effects for players:                                                                                                                               .
       .       first talk through what we're going to learn                                                                                                            .
       .       then guess what the formula is going to be for this model                                                                                               .
       .       finally show the results                                                                                                                                .
    1:50                                                                                                                                                             end
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
:::

