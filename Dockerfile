FROM rocker/r-base:latest

WORKDIR /usr/local/hello
COPY . .

## handle 'renv' autoloader (see
## https://rstudio.github.io/renv/articles/docker.html#handling-the-renv-autoloader-1)
RUN R --vanilla -e "install.packages('renv', repos = c(CRAN = 'https://cloud.r-project.org'))"
