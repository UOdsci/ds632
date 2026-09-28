---
layout: page
title: Useful links
description: useful links
---

### Course resources

* Tips on [writing Rmd reports](rmarkdown_tips.html)
* Tips on [writing peer reviews](peer_reviews.html)
* How to [check if `rstan` is installed correctly](check_stan_install.html)
* A description of how to [use git](using-git.html) to get the course material.
* Some notes on [how the slides are made from Rmd](development.html).

### Books

Here are a range of books for reference and/or learning,
for a variety of topics and from a variety of angles and backgrounds:

* Kruschke, J. 2018. *Doing Bayesian Data Analysis, 2nd ed.* Academic Press. 
    ([website with data and code](https://sites.google.com/site/doingbayesiandataanalysis/))
    A comprehensive and fully Bayesian statistics textbook,
    focused on building mixed-effects and related models.

* James, Witten, Hastie, and Tibshirani. *Introduction to Statistical Learning*.
    ([website with data, book, and code](https://www.statlearning.com/))
    An introduction to a range of statistical topics generally from the point of view of prediction,
    from (generalized) linear models through splines, tree-based methods, and neural networks.

* Wasserman, 2003. [*All of Statistics*.](https://www.stat.cmu.edu/~larry/)

* Bruce, Bruce, and Gedeck, *Practical Statistics for Data Scientists.* O'Reilley Publishers.
    [code repository](https://github.com/gedeck/practical-statistics-for-data-scientists)
    and [link to the book](https://www.oreilly.com/library/view/practical-statistics-for/9781491952955/)

* Quinn, G. & M. Keough. 2002. *Experimental Design and Data Analysis for Biologists.*
    Cambridge Univ. Press.
    A pretty good practical guide to, well, experimental design and classical statistics,
    with an emphasis on analysis of biological experiments.

* Logan, M. 2010. *Biostatistical Design and Analysis Using R.* Wiley-Blackwell.
    A fairly comprehensive book that covers how to use R to do many of the topics in Quinn and Keough.

* Wickham, H. & G. Grolemund. 2016. *R for Data Science.* O'Reilly Publishers. (free [web version](https://r4ds.had.co.nz/))
    How to do many common data analysis tasks in R,
    specifically in the [tidyverse](http://www.tidyverse.org).

* Wickham, H. *ggplot2: Elegant Graphics for Data Analysis, 2nd edition* (free [web version](https://ggplot2-book.org/) of the in-process 3rd edition)
    A more comprehensive reference to ggplot2 than the [chapter of *R for data science*](https://r4ds.had.co.nz/data-visualisation.html).
    Also see [the documentation](https://ggplot2.tidyverse.org/index.html).

* Wilke, Claus O. *Fundamentals of Data Visualization.*. O'Reilly Publishers. (free [web version](https://serialmentor.com/dataviz/))
    How to think about visualization (with source code for plots available!).

* Hastie, Tibshirani, and Friedman. *Elements of Statistical Learning*.
    ([website with data, book, and code](https://hastie.su.domains/ElemStatLearn/))
    A very mathematical work on topics in statistical learning
    (and predecessor to *Introduction to Statistical Learning*, above).


### brms (and stan)

* the [brms manual](https://paul-buerkner.github.io/brms/index.html)
* the [bayesplot manual](http://mc-stan.org/bayesplot/index.html)
* Rewrite of [Kruschke's models using brms (and tidyverse)](https://solomon.quarto.pub/dbda2/),
    by A. Solomon Kurz.
* Rewrite of [*Applied longitudinal data analysis*](https://content.sph.harvard.edu/fitzmaur/ala2e/)
     using [brms (and tidyverse)](https://solomon.quarto.pub/alda/) by A. Solomon Kurz

* [Stan documentation](https://mc-stan.org/users/documentation/) 
    - the [Reference Manual](https://mc-stan.org/docs/reference-manual/index.html)
        describes the syntax and workings of a Stan program
    - the [Functions Reference](https://mc-stan.org/docs/functions-reference/index.html)
        is where you look up *"what's that function again?"*
    - the [User's Guide](https://mc-stan.org/docs/stan-users-guide/index.html) has examples
        of complex models implemented in Stan, and discusses good programming practice

* [RStan documentation](https://mc-stan.org/users/interfaces/rstan.html) 
* [Example models in Stan](https://github.com/stan-dev/example-models): 
    each contains a Stan program, code for simulating data, real data, and model output and diagnostics
* Vignette on [stanfit objects](https://cran.r-project.org/web/packages/rstan/vignettes/stanfit-objects.html)
* Brief guide to [Stan's warnings](http://mc-stan.org/misc/warnings)

**Tutorials:**

* An example of [debugging Stan convergence](../tutorials/Improving_convergence.html)
* A [technical look at brms](../tutorials/using_brms.html)

### Miscellaneous R tips

* [knitr chunk options](https://yihui.name/knitr/options/) for control of Rmarkdown code chunks
* [Formulae in R](http://conjugateprior.org/2013/01/formulae-in-r-anova/) and, in more detail, [General linear models in R FAQ](http://bbolker.github.io/mixedmodels-misc/glmmFAQ.html)
* How to [print the source code](https://stackoverflow.com/questions/19226816/how-can-i-view-the-source-code-for-a-function/19226817#19226817) 
    for functions that don't show it to you when you type their names. (tldr; `showMethods(fun); getMethod(fun, c(x='class1', y='class2'))`)

### ggplotting

* [ggplot2 quick reference](http://ggplot2.tidyverse.org/reference/)
* [practical ggplot2](https://wilkelab.org/practicalgg/) an annotated website of examples by Claus Wilke

### Rstudio

* Strongly recommended global configuration: 
![Never save or restore .RData](rstudio_config_1.png)
![output not inline](rstudio_config_2.png)

### General resources

- [Hands-On Programming with R](https://rstudio-education.github.io/hopr/index.html), by Garrett Grolemund
- [linuxcommand.org](http://linuxcommand.org/) and [bashguide](http://mywiki.wooledge.org/BashGuide)
- [Software Carpentry](http://software-carpentry.org/lessons/)
- Reproducible Research by Karl Broman:
  [talk](https://github.com/kbroman/Talk_ReproRes) and
  [course](http://kbroman.org/Tools4RR)
- Karl Broman's excellent [short tutorials](http://kbroman.org/pages/tutorials.html) on
  [rmarkdown](http://kbroman.org/knitr_knutshell/pages/Rmarkdown.html), git/github, make, perl, and more.
- a [visual introduction to git](https://learngitbranching.js.org/)
- [Jenny Bryan's stat 545](https://stat545.com/): Data wrangling, exploration, and analysis with R

### Probability and statistics

- List of [common probability distributions](https://en.wikipedia.org/wiki/Probability_distribution#Common_probability_distributions)
- [ANOVA: a short intro using R](https://stat.ethz.ch/~meier/teaching/anova/) by Lukas Meier
- Interactive plot of the [beta distribution](https://www.desmos.com/calculator/mnvwjlvnyj)
- Interactive plot of the [gamma distribution](https://www.desmos.com/calculator/vk2tqrxpk5)
- Interactive plot of [Student's t-distribution](https://www.desmos.com/calculator/u1ftxqcsqd)
