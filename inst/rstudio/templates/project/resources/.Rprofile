# Added in to open index.Rmd
# Not working with OpenFiles in skeleton.dcf

setHook("rstudio.sessionInit", function(newSession) {
  if (newSession)
#    usethis::edit_file(path = file.path(
    rstudioapi::navigateToFile(file = file.path(
      rstudioapi::getActiveProject(), "index.Rmd")
    )
}, action = "append")

