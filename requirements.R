# Install the R packages required to reproduce the analysis.
packages <- c(
  "tidyverse", "janitor", "knitr", "kableExtra", "scales",
  "patchwork", "boot", "broom", "car", "pROC", "rmarkdown"
)
missing <- packages[!vapply(packages, requireNamespace, logical(1), quietly = TRUE)]
if (length(missing)) {
  install.packages(missing, repos = "https://cloud.r-project.org")
}
message("Dependencies are available. Run: rmarkdown::render('Customer_Churn.Rmd', output_file = 'index.html', output_dir = 'docs')")
