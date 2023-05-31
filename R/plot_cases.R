#' Generates a plot of dengue or flu cases throughout the years in different countries.
#'
#' @param df Dataframe with a column "year", "country" and "flu_count"/"dengue_count"
#' @param disease Choose whether you want a plot for "flu" or "dengue"
#' @param plot_title Title of plot
#'
#' @return A plot for dengue or flu cases throughout the years in countries
#' @export
#'
#' @examples
#' \dontrun{
#' If you have a dataframe with a column country that contains a country
#' (or more countries), and a column with dengue/flu_count for different years.
#' And if you would want a plot for flu cases in Germany from 2015-2020,
#' you would use:
#'
#' plot_cases(df = dataframe, disease = "flu", plot_title = "Flu cases in Germany from 2015-2020")
#' }
#' @import dplyr
#' @import ggplot2
plot_cases <- function(df, disease, plot_title){

  if(disease == "flu"){

  summary <- df %>% group_by(year, country) %>% summarise(flu_cases=sum(flu_count, na.rm = T))

  flu_plot <- summary %>% ggplot(aes(x = year, y = flu_cases, colour = country)) +
    geom_point() +
    geom_line(size = 1) +
    theme_bw() +
    labs(title = plot_title , x = "Years", y = "Flu cases")

  flu_plot

  }
  else if(disease == "dengue"){

    summary <- df %>% group_by(year, country) %>% summarise(dengue_cases = sum(dengue_count, na.rm = T))

    dengue_plot <- summary %>% ggplot(aes(x = year, y = dengue_cases, colour = country)) +
      geom_point() +
      geom_line(size = 1) +
      theme_bw() +
      labs(title = plot_title , x = "Years", y = "Dengue cases")

    dengue_plot
  }
}
