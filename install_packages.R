# Lista delle librerie R necessarie per il progetto
required_packages <- c(
  "ggplot2",
  "dplyr", 
  "plotly",
  "DT",
  "knitr",
  "kableExtra",
  "tidyr",
  "tibble",
  "broom",
  "car",
  "viridis"
)

# Installa i pacchetti se non sono già presenti
install_if_missing <- function(packages) {
  missing_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
  if(length(missing_packages) > 0) {
    install.packages(missing_packages, dependencies = TRUE, repos = "https://cran.rstudio.com/")
  }
  invisible(NULL)
}

# Esegue l'installazione
install_if_missing(required_packages)

cat("✅ Tutte le dipendenze R sono state installate correttamente!\n")