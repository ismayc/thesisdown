#' Creates an R Markdown PDF Thesis document
#'
#' This is a function called in output in the YAML of the driver Rmd file
#' to specify using the Reed College Senior Thesis LaTeX template and cls files.
#'
#' @export
#' @param toc A Boolean (TRUE or FALSE) specifying where table of contents should be created
#' @param toc_depth A positive integer
#' @return A modified \code{pdf_document} based on the Reed Senior Thesis LaTeX
#'   template
#' @examples
#' \dontrun{
#'  output: thesisdown::thesis_pdf
#' }
thesis_pdf <- function(toc = TRUE, toc_depth = 3){
  #template <- system.file("template.tex", package = )

  base <- bookdown::pdf_book(template = "template.tex",
    toc = toc,
    toc_depth = toc_depth,
    highlight = "pygments",
    keep_tex = TRUE,
    pandoc_args = "--chapters")

  # Mostly copied from knitr::render_sweave
  base$knitr$opts_chunk$comment <- NA
  base$knitr$opts_chunk$fig.align <- "center"
  base$knitr$knit_hooks$plot <- knitr:::hook_plot_tex

  base
  #  }

}
