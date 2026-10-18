---
title: "Lesson plan: Week 03"
format: html
css: "plans.css"
---

# Tuesday


**Goals:**

- Demystify Wilkinsonian formulas.
- Getting used to lm(), and interpreting the tables it produces.
- There are different ways to parameterize the same model and how to change this in R.
- Choice of parameterization affects interpretation.
- Why the word "regression".
- The linear model
- Relationship of the correlation coefficient to a 1d linear model.
- The CLT and the distinction between the Normal and T limits.
- Stepping through setting up a model and simulating from it, relating the conceptual choices to parameters.
- Intro: model comparison with ANOVA.


**Notes:**

- We only got to "here's ANOVA", without explanation of it.
- Next time move the CLT earlier in class (merge with CLT for the T?), so we can do more on ANOVA.

::: {.paper}
    when                                                                                                                       slides             what          how long  
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
   begin                                                                                                                                                               .
    0:00     The Normal distribution and the Central Limit Theorem                                                             CLT                                15 min
       .        where's "Normal" come from                                                                                                                             .
       .        disambiguation with Student's T                                                                                                                        .
       .        shoutout to the probability density function for the Normal                                                                                            .
       .        (need to get an activity in here!)                                                                                                                     .
       .     Linear Models and Least Squares                                                                                 linear mod                           35 min
       .        the history of the word "regression"                                                                                                                   .
       .        the product-moment correlation coefficient                                                                                                             .
       .        definition of a "linear model"                                                                                                                         .
       .        least-squares fitting of a model                                                                                                                       .
       .        activity: come up with other ways of fitting a linear model                                                   group                               10 min
       .        relationship to the correlation coefficient                                                                                                            .
       .        relationship to the Normal                                                                                                                             .
       .        lots of discussion and talking about things on the board                                                                                               .
       .     Introduction of the lm() function with PanTHERIA                                                                linear mod                           10 min
       .       quick exercise: do some lm() yourself                                                                                                                   .
    1:10     break                                                                                                                                                10 min
    1:20     Multivariate linear models: set-up                                                                                                                   30 min
       .       group work: brainstorm the pumpkin simulation example                                                                                                   .
       .       class discussion: settle on pumpkin simulation set-up and parameters                                                                                    .
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
    0:00     Look at code to simulate pumpkin data, carefully.                                                                 anova           lecture            10 min
       .     What can we learn from linear models here?                                                                                        lecture            25 min
       .        How do estimated coefficients relate to the simulated coefficients?                                                            disco                   .
       .        Walk through with examples the non-uniqueness of a fully specified model                                                                               .
       .        model comparison with ANOVA: soft intro                                                                                                                .
    0:35     Formulas in R                                                                                                    formulas         lecture            10 min
       .        exercise: try to get certain terms to appear                                                                                   exercise           10 min
    0:55     break                                                                                                                                                10 min
    1:05     Homework brainstorm/discussion                                                                                                                       20 min
    1:25     Back to model comparison with ANOVA!                                                                                                                      .
       .       use the board! explain how the terms in the anova table make sense                                                                                      .
       .       exercise: draw boxplots in the case where (a) SSA is big; (b) SSAB is big; (c) neither                                                                  .
       .       where's th p-value come from? The F distribution.                                                                                                       .
       .       and, use the board! explain why the F distribution makes sense                                                                                          .
       .                                                                                                                                                               .
    1:50                                                                                                                                                             end
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
:::

