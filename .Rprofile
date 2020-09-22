# https://stackoverflow.com/questions/62557319/renv-and-git-interaction-r/62605897#62605897
branch = system("git rev-parse --abbrev-ref HEAD", intern = TRUE)
Sys.setenv(RENV_PATHS_LIBRARY = file.path("renv/library", branch))

source("renv/activate.R")
