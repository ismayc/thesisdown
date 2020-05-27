# thesisdown 0.1.0

- Fixed issue ((#86)[https://github.com/ismayc/thesisdown/issues/86]) with references not showing in Gitbook version
- Added support for customizing of thesisdown::gitbook ((#84)[https://github.com/ismayc/thesisdown/pull/84])
- Added hex sticker ([1](https://github.com/ismayc/thesisdown/commit/ababba5437ee2fe0632c74d5428fed35b911c751) and [2](https://github.com/ismayc/thesisdown/commit/d556073c94ae5069d4373fc73811b3115905c56f))
- [Converted http to https throughout Rmd files](https://github.com/ismayc/thesisdown/commit/aa4bac89ab7cf91d7898d9b52d737b00e6b6f71a)
- [Reduced `flights.csv` included data](https://github.com/ismayc/thesisdown/commit/0a6bf0c5d6bdb75be4e09a58b588feeaff778af0) to prepare for sending to CRAN
- [Created {pkgdown} site](https://github.com/ismayc/thesisdown/commit/7febd70b98ae6e8d104bf1080e066468d030b968)

# thesisdown 0.0.2

- Changed default filename (in directions) to be `index` instead of `skeleton` to match with gitbook requirements
- Added preliminary files `00--prelim.Rmd` and changed `abstract.Rmd` to `00-abstract.Rmd` to match
with renaming of files so that `index.Rmd` always comes last alphabetically
- Removed _book and _bookdown_files directories since they are stored at <https://github.com/ismayc/thesisdown_book/tree/gh-pages>

# thesisdown 0.0.1

- Initial release
- PDF version working
