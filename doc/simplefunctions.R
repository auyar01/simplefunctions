## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----loading package and datasets---------------------------------------------
devtools::load_all()
library(simplefunctions)

data("flu_cases")
data("dengue_cases")

## ----get_date() example-------------------------------------------------------

# Creating dataframe with random years in yyyy/mm/dd format
dataframe <- data.frame(date = c(sample(seq(as.Date('1999/01/01'), as.Date('2023/01/01'), by="year"), 12)))
dataframe


# Using get_date() to obtain the years.
dataframe$years <- get_date(dataframe$date,dmy = "year")
dataframe


# Using get_date() to obtain the months.
dataframe$months <- get_date(dataframe$date,dmy = "month")
dataframe

# Using get_date() to obtain the days.
dataframe$days <- get_date(dataframe$date,dmy = "day")
dataframe

## ----disease_count() example--------------------------------------------------
# Total amount of flu cases from 2002-2015 in Belgium. 
disease_count(df = flu_cases, country_name = "Belgium", disease = "flu")

# Total amount of dengue cases from 2002-2015 in Brazil.
disease_count(df = dengue_cases, country_name = "Brazil", disease = "dengue")


## ----plot_cases() example, fig.width= 7---------------------------------------

# Filtering only Argentina, Bolivia and Brazil for dengue_cases
argbolbra_dengue <- dengue_cases %>% filter(country == "Argentina" | country == "Bolivia" | country == "Brazil")

# Plotting dengue cases for Argentina, Bolivia and Brazil from 2002-2015
plot_cases(df = argbolbra_dengue, disease = "dengue",plot_title = "Dengue cases Argentina, Bolivia and Brazil from 2002-2015")

# Filtering only Argentina, Bolivia and Brazil for flu_cases
argbolbra_flu <- flu_cases %>% filter(country == "Argentina" | country == "Bolivia" | country == "Brazil")

# Plotting flu cases for Argentina, Bolivia and Brazil from 2002-2015
plot_cases(df = argbolbra_flu, disease = "flu",plot_title = "Flu cases Argentina, Bolivia and Brazil from 2002-2015")

## ----load_image() example, fig.height=5, fig.width=5--------------------------
# Loading a picture a folder structure from a course I followed.
load_image("inst/DAUR2_fs.png")

