#' Get day,month or year in a column of dataframe with dates if in yyyy/mm/dd format.
#'
#' @param dfcolumn Column in dataframe which contains the dates
#' @param dmy Choose whether you want the days, months or years by filling this parameter with "day", "month" or "year".
#'
#' @return The days, months or years depending on what you chose.
#' @export
#'
#' @examples
#' x <- data.frame(date = '2023-08-24')
#' get_date(x$date, "year")
#'
#' @import stringr
get_date <- function(dfcolumn, dmy){

  if(dmy == "year"){

    str_sub(dfcolumn, start = 1, end = 4 )
  }
  else if(dmy == "month"){

    str_sub(dfcolumn, start = 6, end = 7 )


  }
  else if(dmy == "day"){
    str_sub(dfcolumn, start = 9, end = 10)
  }
}
