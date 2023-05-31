
<!-- README.md is generated from README.Rmd. Please edit that file -->

# simplefunctions

<!-- badges: start -->
<!-- badges: end -->

Simplefunctions is an R package consisting of four functions, that are
really basic and quite specific.The functions are:

- Function 1: `get_date()`
- Function 2: `disease_count()`
- Function 3: `plot_cases()`
- Function 4: `load_image()`

These functions will be used with examples below.

The package also comes with 2 datasets named `flu_cases` and
`dengue_cases`. With `flu_cases` showing the estimated flu cases for
different countries per year, and `dengue_cases` showing the same thing,
but for estimated dengue cases. Use `?flu_cases` and `?dengue_cases`
after installation for the documentation of these datasets.

## Installation

You can install the development version of simplefunctions from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("auyar01/simplefunctions")
```

## Loading library and datasets

``` r
library(simplefunctions)

data("flu_cases")
data("dengue_cases")
```

## Function 1: `get_date()`

When a dataframe contains a column with dates in yyyy/mm/dd format, this
function can be used to get only the years, months or days. I have used
the code of this function to get the years for my datasets. In the chunk
below I’m showing how it would work on a sample dataframe.

``` r

# Creating dataframe with random years in yyyy/mm/dd format
dataframe <- data.frame(date = c(sample(seq(as.Date('1999/01/01'), as.Date('2023/01/01'), by="year"), 12)))
dataframe
#>          date
#> 1  2005-01-01
#> 2  2018-01-01
#> 3  2002-01-01
#> 4  2017-01-01
#> 5  2016-01-01
#> 6  2023-01-01
#> 7  2019-01-01
#> 8  2022-01-01
#> 9  1999-01-01
#> 10 2015-01-01
#> 11 2007-01-01
#> 12 2020-01-01


# Using get_date() to obtain the years.
dataframe$years <- get_date(dataframe$date,dmy = "year")
dataframe
#>          date years
#> 1  2005-01-01  2005
#> 2  2018-01-01  2018
#> 3  2002-01-01  2002
#> 4  2017-01-01  2017
#> 5  2016-01-01  2016
#> 6  2023-01-01  2023
#> 7  2019-01-01  2019
#> 8  2022-01-01  2022
#> 9  1999-01-01  1999
#> 10 2015-01-01  2015
#> 11 2007-01-01  2007
#> 12 2020-01-01  2020


# Using get_date() to obtain the months.
dataframe$months <- get_date(dataframe$date,dmy = "month")
dataframe
#>          date years months
#> 1  2005-01-01  2005     01
#> 2  2018-01-01  2018     01
#> 3  2002-01-01  2002     01
#> 4  2017-01-01  2017     01
#> 5  2016-01-01  2016     01
#> 6  2023-01-01  2023     01
#> 7  2019-01-01  2019     01
#> 8  2022-01-01  2022     01
#> 9  1999-01-01  1999     01
#> 10 2015-01-01  2015     01
#> 11 2007-01-01  2007     01
#> 12 2020-01-01  2020     01

# Using get_date() to obtain the days.
dataframe$days <- get_date(dataframe$date,dmy = "day")
dataframe
#>          date years months days
#> 1  2005-01-01  2005     01   01
#> 2  2018-01-01  2018     01   01
#> 3  2002-01-01  2002     01   01
#> 4  2017-01-01  2017     01   01
#> 5  2016-01-01  2016     01   01
#> 6  2023-01-01  2023     01   01
#> 7  2019-01-01  2019     01   01
#> 8  2022-01-01  2022     01   01
#> 9  1999-01-01  1999     01   01
#> 10 2015-01-01  2015     01   01
#> 11 2007-01-01  2007     01   01
#> 12 2020-01-01  2020     01   01
```

## Function 2: `disease_count()`

This function counts the total amount of cases of dengue or flu in a
country throughout the years. This function is fairly specific for the 2
datasets in this package, so these will be used as examples.

``` r
# Total amount of flu cases from 2002-2015 in Belgium. 
disease_count(df = flu_cases, country_name = "Belgium", disease = "flu")
#> [1] 76869

# Total amount of dengue cases from 2002-2015 in Brazil.
disease_count(df = dengue_cases, country_name = "Brazil", disease = "dengue")
#> [1] 93638
```

## Function 3: `plot_cases()`

This function plots a line graph of dengue/flu cases throughout the
years in different countries. It uses all the countries in the
dataframe, so it is best used after filtering for only the countries you
want.

``` r

# Filtering only Argentina, Bolivia and Brazil for dengue_cases
argbolbra_dengue <- dengue_cases %>% filter(country == "Argentina" | country == "Bolivia" | country == "Brazil")

# Plotting dengue cases for Argentina, Bolivia and Brazil from 2002-2015
plot_cases(df = argbolbra_dengue, disease = "dengue",plot_title = "Dengue cases Argentina, Bolivia and Brazil from 2002-2015")
```

<img src="man/figures/README-plot_cases() example-1.png" width="100%" />

``` r

# Filtering only Argentina, Bolivia and Brazil for flu_cases
argbolbra_flu <- flu_cases %>% filter(country == "Argentina" | country == "Bolivia" | country == "Brazil")

# Plotting flu cases for Argentina, Bolivia and Brazil from 2002-2015
plot_cases(df = argbolbra_flu, disease = "flu",plot_title = "Flu cases Argentina, Bolivia and Brazil from 2002-2015")
```

<img src="man/figures/README-plot_cases() example-2.png" width="100%" />

## Function 4: `load_image()`

This function is not really related to previous functions. This one’s
just for loading an image by giving the path to the file.

``` r
# Loading a picture a folder structure from a course I followed.
load_image("inst/DAUR2_fs.png")
```

<img src="man/figures/README-load_image() example-1.png" width="100%" />
