# Welcome!

<!-- badges: start -->

[![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable) [![thanks-md](https://img.shields.io/badge/THANKS-md-ff69b4.svg)](THANKS.md) [![license](https://img.shields.io/badge/license-MIT%20+%20file%20LICENSE-lightgrey.svg)](https://choosealicense.com/)

<!-- badges: end -->

This is a minimal Thesis template based on R Markdown, [bookdown](https://github.com/rstudio/bookdown) and [thesisdown](https://github.com/ismayc/thesisdown). This template originally designed to work with the Monash University Thesis guidelines. Currently this template is functional in knitting gitbook and PDF version.

This template provides a skeleton file structure that you can edit to create your thesis. Edit the \*\*\_bookdown.yml\*\* file to set the order in which you'd like them to appear.

Each chapter should be in different .Rmd files. If you want specific LaTeX packages to add, put them in monashthesis.tex. Make sure that you have **knitr**, **bookdown** and **thesisdown** packages.

    if (!require("remotes")) 
      install.packages("remotes", repos = "https://cran.rstudio.org")
    remotes::install_github("rstudio/bookdown")
    remotes::install_github("ismayc/thesisdown")
    remotes::install_github("masiraji/monashthesisdown")

I have commented out **186 number** line in **monashthesis.cls** to sync with the guideline. If you want a logo please activate line 186.

## How to use

A detailed how to guide can be found [here](https://github.com/ismayc/thesisdown)
