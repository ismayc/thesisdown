# Welcome!

This is a minimal Thesis template based on R Markdown and [bookdown](https://github.com/rstudio/bookdown)

[bookdown]() and [thesisdown](https://github.com/ismayc/thesisdown). This template originally designed to work with the Monash University Thesis guidelines. Currently this template is functional in knitting gitbook and PDF version.

This template provides a skeleton file structure that you can edit to create your thesis. Edit the \*\*\_bookdown.yml\*\* file to set the order in which you'd like them to appear.

Each chapter should be in different .Rmd files. If you want specific LaTeX packages to add, put them in monashthesis.tex. Make sure that you have **knitr**, **bookdown** and **thesisdown** packages.

    if (!require("remotes")) 
      install.packages("remotes", repos = "https://cran.rstudio.org")
    remotes::install_github("rstudio/bookdown")
    remotes::install_github("ismayc/thesisdown")

I have commented out **186 number** line in **monashthesis.cls** to make it complaint to the guideline. If you want a logo activate line 186.

## How to use

A detailed how to guide can be found [here](https://github.com/ismayc/thesisdown)
