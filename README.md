# beaverdown

This project is a modified version Chester Ismay's [thesisdown][4] package to 
provide support for Oregon State University's thesis.

Currently, the PDF version is fully functional. All other versions are derived from thesisdown and are not guaranteed to work.


## Installation

To install and use `beaverdown` and use it for your dissertation/thesis, you will need:

 - [pandoc][0]
 - [LaTeX][1]
 - [R >= 3.3.0][2]
 - [RStudio][3] (optional, but it helps)

Open Rstudio and type:


```r
if (!require("devtools")) install.packages("devtools", repos = "http://cran.rstudio.org")
devtools::install_github("zkamvar/beaverdown")
```

To use it, open Rstudio, click on **File > New File > Rmarkdown ...** and then
select the **Oregon State University Thesis** from the **Templates**.

![New R Markdown](thesis_rmd.png)

Make sure to give your thesis a title and save it to the correct path. Rstudio
will send you to that directory and then you should open `_bookdown.yml` and
edit the first Rmd file to be the name of your project:

```diff
book_filename: "thesis"
chapter_name: "Chapter "
-rmd_files: ["index.Rmd",
+rmd_files: ["myThesis.Rmd",
  "chapters/01-chap1.Rmd",
  "chapters/02-chap2.Rmd",
  "chapters/03-chap3.Rmd",
  "chapters/04-conclusion.Rmd",
  "chapters/99-references.Rmd"
  ]
```

Instructions for editing are in the [README file][5].

<!--
The current output for the four versions is here:
- [PDF](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.pdf) (Generating LaTeX file is available [here](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.tex) with other files at in the [book directory](https://github.com/ismayc/thesisdown_book/tree/gh-pages).)
- [Word](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.docx)
- [ePub](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.epub)
- [gitbook](http://ismayc.github.io/thesisdown_book)

Under the hood, the Reed College LaTeX template (and soon the Reed College Word template) is used to ensure that documents conform precisely to submission standards. At the same time, composition and formatting can be done using lightweight [markdown](http://rmarkdown.rstudio.com/authoring_basics.html) syntax, and **R** code and its output can be seamlessly included using [rmarkdown](http://rmarkdown.rstudio.com).

Using **thesisdown** has some prerequisites which are described below. To compile PDF documents using **R**, you are going to need to have LaTeX installed.  It can be downloaded for Windows at <http://http://miktex.org/download> and for Mac at <http://tug.org/mactex/mactex-download.html>.  Follow the instructions to install the necessary packages after downloading the (somewhat large) installer files.  You may need to install a few extra LaTeX packages on your first attempt to knit as well.

### Using thesisdown from Chester's GitHub

To use **thesisdown** from RStudio:

1) Install the latest [RStudio](http://www.rstudio.com/products/rstudio/download/).

2) Install the **thesisdown** package: 

```S
install.packages("devtools")
devtools::install_github("ismayc/thesisdown")
```

3) Use the **New R Markdown** dialog to select **Thesis**:

![New R Markdown](thesis_rmd.png)

Note that this will currently only **Knit** if you name the directory `index` as shown above.

-->

 [0]: http://pandoc.org/
 [1]: https://www.latex-project.org/get/
 [2]: https://r-project.org
 [3]: https://rstudio.org
 [4]: https://github.com/ismayc/thesisdown
 [5]: https://github.com/zkamvar/beaverdown/tree/master/inst/rmarkdown/templates/oregonstate/skeleton#readme
