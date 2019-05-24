# thesisdown

This project was inspired by the [bookdown](https://github.com/rstudio/bookdown) package and is an updated version of my Senior Thesis template in the `reedtemplates` package [here](https://github.com/ismayc/reedtemplates). It was originally designed to only work with the Reed College LaTeX template, but has since been adapted to work with many different institutions by many different individuals. Check out the **Customizing thesisdown to your institution** section below for examples.

Currently, the PDF and gitbook versions are fully-functional.  The word and epub versions are developmental, have no templates behind them, and are essentially calls to the appropriate functions in bookdown.

If you are new to working with `bookdown`/`rmarkdown`, please read over the documentation available in the `gitbook` template at https://thesisdown.netlify.com/.  This is also available below at https://ismayc.github.io/thesisdown_book.

The current output for the four versions is here:
- [PDF](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.pdf) (Generating LaTeX file is available [here](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.tex) with other files at in the [book directory](https://github.com/ismayc/thesisdown_book/tree/gh-pages).)
- [Word](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.docx)
- [ePub](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.epub)
- [gitbook](https://ismayc.github.io/thesisdown_book)

Under the hood, the Reed College LaTeX template is used to ensure that documents conform precisely to submission standards. At the same time, composition and formatting can be done using lightweight [markdown](https://rmarkdown.rstudio.com/authoring_basics.html) syntax, and **R** code and its output can be seamlessly included using [rmarkdown](https://rmarkdown.rstudio.com).

## Customizing thesisdown to your institution

In an ideal world, this package would support a variety of different LaTeX templates from a wide range of institutions and we'd love to get it there at some point. Until that time, realize that this was designed to only work with the Reed College LaTeX template but others have adapted it to work with their institutions.  Here are some that have customized it to fit their needs.  It is recommended you review how they changed the files by comparing their repositories to this one and then make tweaks to yours as needed.  Feel free to file an issue on this repo if you have questions/troubles.

Have you created a thesisdown template for your institution and would like to have it included here? Make a PR [similar to the commit done to include `jayhawkdown`](https://github.com/ismayc/thesisdown/commit/760113a076767cf67b6e22339e398bd3f15305c5). I'll review it and merge it in. Let's keep the list going!


|College/University                              |Repository                                                                                    |Based on                                                        |
|:---------------------------------------|:---------------------------------------------------------------------------------------------|:---------------------------------------------------------------|
|American University                    |[SimonHeuberger/eagledown](https://github.com/SimonHeuberger/eagledown)                     |[benmarwick/huskydown](https://github.com/benmarwick/huskydown) |
|Brock University                        |[brentthorne/brockdown](https://github.com/brentthorne/brockdown)                             |[zkamvar/beaverdown](https://github.com/zkamvar/beaverdown)     |
|Duke University                         |[mine-cetinkaya-rundel/thesisdowndss](https://github.com/mine-cetinkaya-rundel/thesisdowndss) |[ismayc/thesisdown](https://github.com/ismayc/thesisdown)       |
|Humboldt University of Berlin          |[phister/huwiwidown](https://github.com/phister/huwiwidown)  |[ismayc/thesisdown](https://github.com/ismayc/thesisdown) |
|Kansas State University                 |[emraher/wildcatdown](https://github.com/emraher/wildcatdown)                                 |[benmarwick/huskydown](https://github.com/benmarwick/huskydown) |
|Massachusetts Institute of Technology                |[ratatstats/manusdown](https://github.com/ratatstats/manusdown)                                 |[ismayc/thesisdown](https://github.com/ismayc/thesisdown)  |
|Oregon State University                 |[zkamvar/beaverdown](https://github.com/zkamvar/beaverdown)                                   |[ismayc/thesisdown](https://github.com/ismayc/thesisdown)       |
|Oxford University                       |[davidplans/oxdown](https://github.com/davidplans/oxdown)                                     |[ismayc/thesisdown](https://github.com/ismayc/thesisdown)       |
|Southampton University                  |[dr-harper/sotonthesis](https://github.com/dr-harper/sotonthesis)                             |[ismayc/thesisdown](https://github.com/ismayc/thesisdown)       |
|Stanford University                     |[mhtess/treedown](https://github.com/mhtess/treedown)                                         |[ismayc/thesisdown](https://github.com/ismayc/thesisdown)       |
|University College London               |[benyohaiphysics/thesisdownUCL](https://github.com/benyohaiphysics/thesisdownUCL)             |[ismayc/thesisdown](https://github.com/ismayc/thesisdown)       |
|University of California, Davis         |[ryanpeek/aggiedown](https://github.com/ryanpeek/aggiedown)                                   |[DanOvando/gauchodown](https://github.com/DanOvando/gauchodown) |
|University of California, Santa Barbara |[DanOvando/gauchodown](https://github.com/DanOvando/gauchodown)                               |[benmarwick/huskydown](https://github.com/benmarwick/huskydown) |
|University of Florida                   |[ksauby/thesisdownufl](https://github.com/ksauby/thesisdownufl)                               |[ismayc/thesisdown](https://github.com/ismayc/thesisdown)       |
|University of Freiburg                  |[vivekbhr/doctorRbite](https://github.com/vivekbhr/doctorRbite)                               |[ismayc/thesisdown](https://github.com/ismayc/thesisdown)       |
|University of Kansas                    |[wjakethompson/jayhawkdown](https://github.com/wjakethompson/jayhawkdown)                     |[ismayc/thesisdown](https://github.com/ismayc/thesisdown)       |
|University of Minnesota                 |[zief0002/qmedown](https://github.com/zief0002/qmedown)                                       |[ismayc/thesisdown](https://github.com/ismayc/thesisdown)       |
|University of New South Wales           |[rensa/unswthesisdown](https://github.com/rensa/unswthesisdown)                               |[ismayc/thesisdown](https://github.com/ismayc/thesisdown)       |
|University of Salzburg                  |[irmingard/salzburgthesisdown](https://github.com/irmingard/salzburgthesisdown)               |[ismayc/thesisdown](https://github.com/ismayc/thesisdown)       |
|University of Washington                |[benmarwick/huskydown](https://github.com/benmarwick/huskydown)                               |[ismayc/thesisdown](https://github.com/ismayc/thesisdown)       |

### Using thesisdown from Chester's GitHub

Special thanks to [Ben Marwick](https://github.com/benmarwick) for helping to add a lot more clarity to the directions below from the [README of his spin-off `huskydown` package](https://github.com/benmarwick/huskydown/blob/master/README.md).

Using **thesisdown** has some prerequisites which are described below. To compile PDF documents using **R**, you are going to need to have LaTeX installed. By far the easiest way to install LaTeX on any platform is with the [tinytex](https://yihui.name/tinytex/) R package:

```{r}
install.packages(c('tinytex', 'rmarkdown'))
tinytex::install_tinytex()
# after restarting RStudio, confirm that you have LaTeX with 
tinytex:::is_tinytex() 
```

You may need to install a few extra LaTeX packages on your first attempt to knit as well. 

To use **thesisdown** from [RStudio](http://www.rstudio.com/products/rstudio/download/):

1) Ensure that you have already installed LaTeX and the fonts described above, and are using the latest version of [RStudio](http://www.rstudio.com/products/rstudio/download/). You can use `thesisdown` without RStudio. For example, you can write the Rmd files in your favourite text editor (e.g. [Atom](https://atom.io/), [Notepad++](https://notepad-plus-plus.org/)). But RStudio is probably the easiest tool for writing both R code and text in your thesis. It also provides a nice way to build your thesis while editing. We'll proceed assuming that you have decided to use the RStudio workflow.

2) Install the **bookdown** and **thesisdown** packages: 

```r
if (!require("remotes")) install.packages("remotes", repos = "http://cran.rstudio.org")
remotes::install_github("rstudio/bookdown")
remotes::install_github("ismayc/thesisdown")
```

3) Use the **New R Markdown** dialog to select **Thesis**:

    ![New R Markdown](thesis_rmd.png)

    Note that this will currently only **Knit** if you name the directory `index` as shown above. This guarantees that `index.html` is generated correctly for the Gitbook version of the thesis.

4) After choosing which type of output you'd like in the YAML at the top of index.Rmd, **Knit** the `index.Rmd` file to get the book in PDF or HTML formats.

### Day-to-day writing of your thesis 

You need to edit the individual chapter R Markdown files to write your thesis. It's recommended that you version control your thesis using GitHub if possible. RStudio can also easily sync up with GitHub to make the process easier. While writing, you should `git commit` your work frequently, after every major activity on your thesis. For example, every few paragraphs or section of text, and after major step of analysis development. You should `git push` at the end of each work session before you leave your computer or change task. For gentle novice-friendly guide to getting starting with using Git with R and RStudio, see <http://happygitwithr.com/>.

## Rendering

To render your thesis into a PDF, open `index.Rmd` in RStudio and then click the "knit" button. To change the output formats between PDF, gitbook and Word , look at the `output:` field in `index.Rmd` and comment-out the formats you don't want.

The PDF file of your thesis will be deposited in the `_book/` directory, by default.

## Components

The following components are ones you should edit to customize your thesis:

### `_bookdown.yml`

This is the main configuration file for your thesis. It determines what Rmd files are included in the output, and in what order. Arrange the order of your chapters in this file and ensure that the names match the names in your folders. 

### `index.Rmd`

This file contains all the meta information that goes at the beginning of your
document. You'll need to edit this to put your name on the first page, the title of your thesis, etc.

### `01-chap1.Rmd`, `02-chap2.Rmd`, etc.

These are the Rmd files for each chapter in your dissertation. Write your thesis in these. If you're writing in RStudio, you may find the [wordcount addin](https://github.com/benmarwick/wordcountaddin) useful for getting word counts and readability statistics in R Markdown documents.

### `bib/`

Store your bibliography (as bibtex files) here. We recommend using the [citr addin](https://github.com/crsh/citr) and [Zotero](https://www.zotero.org/) to efficiently manage and insert citations. 

### `csl/`

Specific style files for bibliographies should be stored here. A good source for
citation styles is https://github.com/citation-style-language/styles#readme

### `figure/` and `data/`

Store your figures and data here and reference them in your R Markdown files. See the [bookdown book](https://bookdown.org/yihui/bookdown/) for details on cross-referencing items using R Markdown.
