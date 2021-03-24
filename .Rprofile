# https://stackoverflow.com/questions/62557319/renv-and-git-interaction-r/62605897#62605897
branch = system("git rev-parse --abbrev-ref HEAD", intern = TRUE)
Sys.setenv(RENV_PATHS_LIBRARY = file.path("renv/library", branch))

source("renv/activate.R")

# do not .gitignore folder 'renv/local' (starting w/0.13.0; 
# https://github.com/rstudio/renv/issues/696)
if (utils::packageVersion("renv") >= 0.13) {
  lns = readLines("renv/.gitignore")
  lcl = grepl("local(/)?", lns)
  if (any(lcl)) {
    writeLines(
      lns[!lcl]
      , "renv/.gitignore"
    )
  }
}
