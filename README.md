# thesisdown

This project was inspired by the [bookdown](http://github.com/rstudio/bookdown) package and is an updated version of my Senior Thesis template in the `reedtemplates` package [here](http://github.com/ismayc/reedtemplates).

Currently, the PDF and gitbook versions are fully-functional.  The word and epub versions are developmental, have no templates behind them, and are essentially calls to the appropriate functions in bookdown.

If you are new to working with `bookdown`/`rmarkdown`, please read over the documentation available in the `gitbook` template at https://thesisdown.netlify.com/.  This is also available below at http://ismayc.github.io/thesisdown_book.

The current output for the four versions is here:
- [PDF](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.pdf) (Generating LaTeX file is available [here](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.tex) with other files at in the [book directory](https://github.com/ismayc/thesisdown_book/tree/gh-pages).)
- [Word](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.docx)
- [ePub](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.epub)
- [gitbook](http://ismayc.github.io/thesisdown_book)

Under the hood, the Reed College LaTeX template is used to ensure that documents conform precisely to submission standards. At the same time, composition and formatting can be done using lightweight [markdown](http://rmarkdown.rstudio.com/authoring_basics.html) syntax, and **R** code and its output can be seamlessly included using [rmarkdown](http://rmarkdown.rstudio.com).

## Customizing thesisdown to your institution

In an ideal world, this package would support a variety of different LaTeX templates from a wide range of institutions and we'd love to get it there at some point. Until that time, realize that this was designed to only work with the Reed College LaTeX template but others have adapted it to work with their institutions.  Here are a couple that have customized it to fit their needs.  It is recommended you review how they changed the files by comparing their repositories to this one and then make tweaks to yours as needed.  Feel free to file an issue on this repo if you have questions/troubles:

- Mine Cetinkaya-Rundel at Duke University: [thesisdowndss](https://github.com/mine-cetinkaya-rundel/thesisdowndss)
- Zhian Kamvar at Oregon State University: [beaverdown](https://github.com/zkamvar/beaverdown)
- Ben Marwick at the University of Washington: [huskydown](https://github.com/benmarwick/huskydown)
- Jake Thompson at the University of Kansas: [jayhawkdown](https://github.com/wjakethompson/jayhawkdown)


### Using thesisdown from Chester's GitHub

Using **thesisdown** has some prerequisites which are described below. To compile PDF documents using **R**, you are going to need to have LaTeX installed.  It can be downloaded for Windows at <http://http://miktex.org/download> and for Mac at <http://tug.org/mactex/mactex-download.html>.  Follow the instructions to install the necessary packages after downloading the (somewhat large) installer files.  You may need to install a few extra LaTeX packages on your first attempt to knit as well.

To use **thesisdown** from RStudio:

1) Install the latest [RStudio](http://www.rstudio.com/products/rstudio/download/).
Only the version as of Oct 2017 has a recent enough Pandoc included so you may need to upgrade this
separately or install a newer RStudio.

    ```r
    rmarkdown::pandoc_available("1.2")
    #> [1] TRUE
    ```

2) Install the **bookdown** and **thesisdown** packages: 

```
install.packages("devtools")
devtools::install_github("rstudio/bookdown")
devtools::install_github("ismayc/thesisdown")
```

3) Use the **New R Markdown** dialog to select **Thesis**:

    ![New R Markdown](thesis_rmd.png)

    Note that this will currently only **Knit** if you name the directory `index` as shown above.

4) After choosing which type of output you'd like in the YAML at the top of index.Rmd, **Knit** the `index.Rmd` file to get the book in PDF or HTML formats.
5) Edit the individual chapter R Markdown files as you wish and then re-run step (4) again.
