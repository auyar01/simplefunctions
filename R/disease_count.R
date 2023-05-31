#' Counts cases of flu or dengue in a country.
#'
#' @param df Dataframe containing a column with countries, and flu_count or dengue_count for different dates.
#' @param country_name Name of country in country column
#' @param disease "flu" or "dengue"
#'
#' @return The total sum of cases of chosen disease throughout the years for a specific country
#' @export
#'
#' @examples
#' \dontrun{
#' If you have a dataframe with a column country that contains different countries,
#' and a column with dengue/flu_count for different dates.
#' And u want to know the sum of flu cases throughout the years
#' for Bolivia you would use this:
#'
#' disease_count(df = dataframe, country = "Bolivia", disease = "flu")
#' }
#' @import dplyr
disease_count <- function(df, country_name, disease){
  if(disease == "flu"){
  df %>% filter(country == country_name) %>% summarise(sum=sum(flu_count, na.rm = T)) %>% .$sum
  }
  else if(disease == "dengue"){

  df %>% filter(country == country_name) %>% summarise(sum=sum(dengue_count, na.rm = T)) %>% .$sum
  }
}
