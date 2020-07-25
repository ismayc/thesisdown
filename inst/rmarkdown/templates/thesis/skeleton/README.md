
<!-- README.md is generated from README.Rmd. Please edit that file -->

# testdeploybook

<!-- badges: start -->

![deploy](https://github.com/abichat/testdeploybook/workflows/deploy/badge.svg)
<!-- badges: end -->

## Configure GitHub Actions workflow

With the help of
[ROpenSci](https://ropenscilabs.github.io/actions_sandbox/websites-using-pkgdown-bookdown-and-blogdown.html#action-to-deploy-a-bookdown-site)
and
[ColinFay](https://github.com/ThinkR-open/engineering-shiny-book/blob/master/.github/workflows/deploy_bookdown.yml).

    on:
      push:
         branches:
           - master
    
    name: deploy
    
    jobs:
    
      bookdown:
    
        if: "!contains(github.event.head_commit.message, 'skip deploy')"
    
        name: Render-Book
        runs-on: macOS-latest
    
        steps:
    
          - uses: actions/checkout@v1
    
          - uses: r-lib/actions/setup-r@v1
    
          - uses: r-lib/actions/setup-pandoc@v1
    
          - name: Install tinytex
            uses: r-lib/actions/setup-tinytex@master
    
          - name: Install rmarkdown, bookdown and remotes
            run: Rscript -e 'install.packages(c("rmarkdown", "bookdown", "remotes"), Ncpus = 4)'
    
          - name: Install thesisdown
            run: Rscript -e 'remotes::install_github("ismayc/thesisdown", Ncpus = 4)'
    
          - name: Render Book
            run: Rscript -e 'bookdown::render_book("index.Rmd", c("thesisdown::thesis_gitbook", "thesisdown::thesis_pdf"))'
    
          - uses: actions/upload-artifact@v1
            with:
              name: _book
              path: _book/
    
    # Need to first create an empty gh-pages branch
    # see https://pkgdown.r-lib.org/reference/deploy_site_github.html
    # and also add secrets for a GHTOKEN and EMAIL to the repository
    # gh-action from Cecilapp/GitHub-Pages-deploy
      checkout-and-deploy:
    
        if: "!contains(github.event.head_commit.message, 'skip deploy')"
    
        runs-on: ubuntu-latest
        needs: bookdown
    
        steps:
    
         - name: Checkout
           uses: actions/checkout@master
    
         - name: Download artifact
           uses: actions/download-artifact@v1.0.0
           with:
             # Artifact name
             name: _book # optional
             # Destination path
             path: _book # optional
    
         - name: Deploy to GitHub Pages
           uses: Cecilapp/GitHub-Pages-deploy@master
           env:
              EMAIL: ${{ secrets.EMAIL }}               # must be a verified email
              GH_TOKEN: ${{ secrets.GHTOKEN }} # https://github.com/settings/tokens
              BUILD_DIR: _book/                     # "_site/" by default

## Create an empty GitHub page

    git checkout --orphan gh-pages
    git rm -rf .
    git commit --allow-empty -m 'Initial gh-pages commit'
    git push origin gh-pages
    git checkout master
