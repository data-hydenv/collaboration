# This file collects a number of helpful functions for our analysis
dummy <- function(a, b) {
  return(c(a, b))
}

correlation <- function(data) {
  # remove some columns
  use_cols <- names(data) %in% c("radiation_influence", "longitude", "latitude")
  corr_data <- data[!use_cols]
  corr_mat <- cor(corr_data, method='pearson')
  rounded_corr_mat <- round(corr_mat, 2)
  return(rounded_corr_mat)
}