---
title: "Lesson plan: Week 02"
format: html
css: "plans.css"
---

**Goals:**

- Give some more pointers into R; clarify tidyverse-vs-base R
- understand and practice nonparametric methods (bootstrap, permutation test)


# Tuesday


**Notes:**

- some people are just getting started with R, lots of difficulties
- make sure it's super easy and clear where to get the data!!


::: {.paper}
    when                                                                                                                       slides             what          how long  
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
   begin                                                                                                                                                               .
    0:00     Permutation tests: motivation and relationship to the p-value (what is null model?)                            permutation        lecture            10 min
       .        quick example with AirBnB data                                                                                   .                                     .
       .       exercise: permutation test for herbivore/carnivore size with PanTHERIA                                            .             exercise           15 min
       .        demo: do this myself                                                                                             .             exercise            5 min
       .        everyone takes a long time to figure out how to download the data                                                .                                a while
       .        lots of talking through how to do stuff in R and debugging code                                                  .                                     .
    1:20     Switch to "visualization" because we're about to use a bunch of data wrangling and plotting code                   viz            lecture            10 min
       .       Tidy data; background on the R language; "base" vs "tidyverse" dialects                                           .                                     .
       .       Examples of "base" vs dplyr things with PanTHERIA                                                                 .                                     .
    1:05     Visualization and ggplot                                                                                           viz            lecture            10 min
       .       walkthrough of different visualizations of litter size by order/family                                            .                                     .
    1:50                                                                                                                                                             end
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
:::


# Thursday



**Notes:**


::: {.paper}
    when                                                                                                                       slides             what          how long  
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
   begin                                                                                                                                                               .
    0:00     Visualization and ggplot (continued)                                                                               viz            lecture            20 min
       .       philosophy and outline of ggplot                                                                                  .                                     .
       .       demo of ggplot syntax for the same plots as before                                                                .                                     .
       .       exercise: make this plot with ggplot                                                                              .                ex              10 min
    0:30     Back to permutation tests:                                                                                      permutation         demo             30 min
       .       walk-through demo for permutation test within Family                                                              .                 .                   .
       .       including group brainstorming of what to do and how                                                               .              disco                  .
    1:00     break                                                                                                                                                 5 min
    1:05     Homework: discuss in groups how to do the homework                                                                                 group             15 min
    1:15     The Bootstrap:                                                                                                    bootstrap                                
       .       motivation and theory                                                                                                                              10 min
       .       exercise: bootstrap this simple example (median with a few numbers)                                                                                 5 min
       .       confidence intervals from the bootstrap                                                                                                             5 min
       .       exercise: find CIs from simple example                                                                                                             15 min
       .                                                                                                                                                               .
    1:50                                                                                                                                                             end
--------     ----------------------------------------------------------------------------------------------------------    -------------    ---------------    -----------
:::

