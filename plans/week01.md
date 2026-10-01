---
title: "Lesson plan: Week 01"
format: html
css: "plans.css"
---


# Goals

- Orient class, assess skill levels, get everyone knowing what to set up software-wise
- Review classical stats:
    * p-values
    * confidence intervals
    * t-tests
    - the t-distribution
- Practice getting/looking at a data set
- Introduce simulation-based way of working/checking

**Slides:**

1. Introduction
2. Hypothesis testing and p-values
3. The $t$-distribution
4. Confidence intervals

**Homework:** 

- Do a simulation-based power analysis on a real-world situation.
- *Bonus:* compare results to CLT theory.


# Tuesday


::: {.paper}
    when                                                                                                                       slides             what          how long  
--------     ----------------------------------------------------------------------------------------------------------    ---------------    -------------    -----------
   begin     Introductions/overview                                                                                          Uncertainty         intro           30 min
       .       everyone introduces themselves                                                                                                    disco                .
       .       class mechanics and goals                                                                                                                              .
       .       discussion: exams and evaluations? do we have quizzes? a midterm?                                                                                      .
    0:30     Fill out survey on canvas and break                                                                                                 break           10 min
    0:40     Inference/learning: stats vs parameters                                                                         Uncertainty         lecture         40 min
       .     mess around in R looking at AirBnB data                                                                                                                  .
       .     comparison of instant bookable/not: discussion                                                                                                           .
       .     write conclusion to t-test: short group discussion                                                                                  group                .
       .     where does time go, anyways?                                                                                                        disco                .
    1:20     p-values                                                                                                        p-values            lecture         30 min
       .       diagram on board choices of bits of the p-value definition                                                                         disco               .
       .       demo of empirical p-value                                                                                                            .                 .
       .       for the "fingers" example                                                                                                            .                 .
       .       and for the t-test example                                                                                                                             .
    1:50                                                                                                                                                            end
--------     ----------------------------------------------------------------------------------------------------------    ---------------    -------------    -----------
:::


**Notes:**

- Introductions: names, area of study, data analysis goals



# Thursday


::: {.paper}
    when                                                                                                                       slides             what          how long  
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
   begin                                                                                                                                                               .
    0:00     t-distribution                                                                                                   t-distrib          lecture          20 min
       .        show Wikipedia, for the density function etcetera                                                                                   .                  .
       .        also show rt, pt, dt, etc in R                                                                                                      .                  .
       .        talk through on the board what SEs are and how t = (mean diff) / SE                                                                 .                  .
       .        demonstrate in R how to pull the stat out of str(t.test( ))                                                                         .                  .
       .        show how to simulate from the t distribution by drawing from Normal( )                                                              .                  .
       .        talk about "sampling distributions" and that abstraction layer                                                                      .                  .
       .        on your own: replicate with other distributions                                                                                    group          15 min
    0:35     Start on homework: groups                                                                                                              .             15 min
       .       do this one whiteboards! no computers! sketch out what the goal is for the homework.                                                                    .
    0:50     Break                                                                                                                                                 5 min
    0:55     Confidence Intervals                                                                                                                lecture          35 min
       .       Exercise: simulate with mean=0 and mean=1 and look at p-values, but first predicting what will happen           CIs                indiv                .
       .       definition: coverage                                                                                                                                    .
       .       explanation on board of t distribution to CI (invisible dog)                                                                                            .
       .       Discussion: what's the "95%" mean in a CI?                                                                                         disco                .
       .     Power: definition and power analysis discussion                                                                                                           .
    1:30     Group work: power analysis with AirBnB data                                                                       CIs                                20 min
    1:50                                                                                                                                                             end
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
:::


**Notes:**
