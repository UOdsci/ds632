---
title: "Lesson plan: Week 05"
format: html
css: "plans.css"
---

**Goals:**

- Understand the concept of *random effects* and know how to use lme4 to fit them
    * write down the likelihoods on the board
- Understand *hierarchical* modeels: putting a distribution on a parameter
- Understand the basics of Bayesian analysis (prior/posterior)
- Review the rules of probability
- Gain familiarity and experience with the Beta-Binomial/random coin concept
- Meet the Beta distribution

# Tuesday


**Notes:**



::: {.paper}
    when                                                                                                                       slides             what          how long  
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
   begin                                                                                                                                                               .
    0:00     Biased coins: introduction to the problem                                                                       prior            lecture             10 min
    0:10     Probability rules                                                                                               prob             lecture             20 min
       .       including working through "which of two coins did I just flip" example on board                                                disco                    .
    0:30     Prior distributions                                                                                             prior            lecture             35 min
       .       "ten coins" example                                                                                                                                     .
       .       discuss: what *is* the right answer to the coins question?                                                                     group                    .
    0:55     break                                                                                                                                                10 min
    1:05     The Beta distribution                                                                                           beta             lecture              5 min
       .       beta-binomial simulation exercise                                                                                              exercise            15 min
    1:25     Unknown coins: continuous (Beta)-distributed prior                                                              prior            lecture             25 min
       .       miraculously, the thing we just simulated we can write down exactly!                                                                                    .
    1:50                                                                                                                                                             end
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
:::


# Thursday



**Notes:**

We do random effects second so that (a) they can start on the homework sooner,
and (b) we can connect up the topic of the week (hierarchical models) to what we were doing already (linear models).

::: {.paper}
    when                                                                                                                       slides             what          how long  
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
   begin                                                                                                                                                               .
    0:00     Bayesian inference: what's the probability of heads? Discussion:                                                prior             group and          50 min
       .        what's the prior                                                                                                                 disco                 .
       .        point exclusion                                                                                                                                        .
       .        point estimate                                                                                                                                         .
       .        uncertainty estimation                                                                                                                                 .
    0:50     Homework discussion                                                                                                                                  15 min
    1:05     break                                                                                                                                                 5 min
    1:10     Random effects                                                                                                                                        X min
       .                                                                                                                                                               .
    1:50                                                                                                                                                             end
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
:::

