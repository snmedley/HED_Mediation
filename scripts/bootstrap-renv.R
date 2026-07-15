#!/usr/bin/env Rscript
# Bootstrap the R environment for this project.
#
# Fresh clone:      Rscript scripts/bootstrap-renv.R
# After adding pkgs: renv::snapshot()   (commits new pins to renv.lock)

if (!requireNamespace("renv", quietly = TRUE)) {
  message("Installing renv...")
  install.packages("renv", repos = "https://cloud.r-project.org")
}

lockfile <- "renv.lock"

if (file.exists(lockfile) && file.size(lockfile) > 0) {
  message("Restoring environment from renv.lock ...")
  renv::restore(prompt = FALSE)
} else {
  message("No lockfile yet - initializing renv for this project ...")
  renv::init(bare = TRUE)
  message("Done. Install packages as needed, then run renv::snapshot().")
}
