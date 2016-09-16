# Oregon State University RMarkdown thesis template

This is the unofficial Oregon State University RMarkdown thesis template. You 
can find a copy of this template at https://github.com/zkamvar/beaverdown.

To install the template, be sure you have the following:

 - [pandoc][0]
 - [LaTeX][1]
 - [R >= 3.3.0][2]
 - [RStudio][3] (optional, but it helps)

To get this document, you've either opened a new Rmarkdown document from Rstudio
using the oregonstate template or you've run the followin command in a clean
working directory:

```r
rmarkdown::draft("index.Rmd", template = "oregonstate", package = "thesisdown")
```

## Rendering

To render your thesis, you can open `index.Rmd` in RStudio and then hit the
"knit" button. Alternatively, you can use:

```r
rmarkdown::render("index.Rmd")
```

Your thesis will be deposited in the `_book/` directory.

## Components

The following components are ones you should edit to customize your thesis:

### _bookdown.yml

This is the main configuration file for your thesis. Arrange the order of your
chapters in this file and ensure that the names match the names in your folders.

### index.Rmd

This file contains all the meta information that goes at the beginning of your
document. Currently, we have the introduction in there, but you can leave that
part blank if you wish. 

### pre/

This folder contains all of the Rmd files to be included in the pretext of your
dissertation (e.g. abstract, acknowledgements, author contributions, etc.).

There is a slight caveat to all of these files: the very first line must be 
plain text or the rendering will be screwed up.

### chapters/

This folder contains the Rmd files for each chapter in your dissertation. Modify
as you will.

### bib/

Store your bibliography (as bibtex files) here.

### csl/

Specific style files for bibliographies should be stored here. A good source for
citation styles is https://github.com/citation-style-language/styles#readme

### figure/ and data/

These should be self explanatory. Store your figures and data here and reference
them in your document. 


 [0]: http://pandoc.org/
 [1]: https://www.latex-project.org/get/
 [2]: https://r-project.org
 [3]: https://rstudio.org
