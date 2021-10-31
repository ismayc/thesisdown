# thesisdown 0.1.0

## Breaking changes to the template

- Fixed issue ([#86](https://github.com/ismayc/thesisdown/issues/86)) with references not showing in Gitbook version in ([#91](https://github.com/ismayc/thesisdown/pull/91) PR)
  - [Moved preliminary content files for the Gitbook to a `prelims` folder](https://github.com/ismayc/thesisdown/pull/91/commits/46dce4572fe027f51e1335cab4348d2492e61265). Note that this was needed since using the Knit button in RStudio with {thesisdown} does not appear to allow for the `rmd_files` argument to be used in building theses.
  - [Fixed \headheight is too small error](https://github.com/ismayc/thesisdown/pull/91/commits/4374e7a81b9d16fa79eb2b9a483cf4cfcd71af6f)
  - [Updated the YAML of `index.Rmd` to ensure references pass through in Gitbook](https://github.com/ismayc/thesisdown/pull/91/commits/42aecc61f662e19f32c0a7b3e1e2fc7cfa3dcd92)
  
## Cosmetic changes to the template (non-breaking)

- [Converted http to https throughout Rmd files](https://github.com/ismayc/thesisdown/commit/aa4bac89ab7cf91d7898d9b52d737b00e6b6f71a)
- [Reduced `flights.csv` included data](https://github.com/ismayc/thesisdown/commit/0a6bf0c5d6bdb75be4e09a58b588feeaff778af0) to prepare for sending to CRAN

## Updates to the package

- Added support for customizing of `thesisdown::gitbook()` ([#84](https://github.com/ismayc/thesisdown/pull/84))
- Added hex sticker ([1](https://github.com/ismayc/thesisdown/commit/ababba5437ee2fe0632c74d5428fed35b911c751) and [2](https://github.com/ismayc/thesisdown/commit/d556073c94ae5069d4373fc73811b3115905c56f))
- [Created {pkgdown} site](https://github.com/ismayc/thesisdown/commit/7febd70b98ae6e8d104bf1080e066468d030b968)
- [Added MIT License](https://github.com/ismayc/thesisdown/pull/91/commits/7ba5cf1ea24876e248ae9e78d28a43212b6f759b) and other cosmetic tweaks to [#91](https://github.com/ismayc/thesisdown/pull/91) PR
- [Switched to using `Imports` instead of `Depends` for best practice](https://github.com/ismayc/thesisdown/commit/2a39610b8f3a97974d9220976edb1d14cd74d6e5#diff-35ba4a2677442e210c23a00a5601aba3R14)
  - [Updated template Rmd files to reflect change to Imports](https://github.com/ismayc/thesisdown/commit/b5dd154e8c87cc9f971b185e667ea4a8b104ddcd)
  - Added Chester Ismay as author and creator to DESCRIPTION

# thesisdown 0.0.2

- Changed default filename (in directions) to be `index` instead of `skeleton` to match with gitbook requirements
- Added preliminary files `00--prelim.Rmd` and changed `abstract.Rmd` to `00-abstract.Rmd` to match
with renaming of files so that `index.Rmd` always comes last alphabetically
- Removed _book and _bookdown_files directories since they are stored at <https://github.com/ismayc/thesisdown_book/tree/gh-pages>

# thesisdown 0.0.1

- Initial release
- PDF version working
