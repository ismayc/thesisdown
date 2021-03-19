import_pkgs <- c("bookdown", "dplyr", "ggplot2", "here", "knitr")
invisible(lapply(import_pkgs, usethis::use_package, type = "Imports"))
suggest_pkgs <- c("remotes", "usethis")
invisible(lapply(suggest_pkgs, usethis::use_package, type = "Suggests"))

usethis::use_pkgdown()
usethis::use_mit_license(name = "Chester Ismay")

usethis::use_package("R.utils", type = "Imports")
