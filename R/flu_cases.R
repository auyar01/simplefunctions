#' Influenza activity estimates for the world
#'
#'
#' This dataset is a reformatted version of a dataset of weekly estimated cases for flu in different countries
#' around the world in 2002-2015 (from Google datasets). This dataset contains the years, flu cases and country.
#'
#' @name flu_cases
#'
#' @usage flu_cases
#'
#' @format A data frame with 17.267 rows and 3 columns:
#'   \describe{
#'     \item{year}{Year for observation}
#'     \item{country}{Country for observation}
#'     \item{flu_count}{Flu cases of country per year}
#'   }
#'
#' @source from Google Flu Trends (http://www.google.org/flutrends). Changed original dataset to only show yearly estimates and reformatted.
NULL
