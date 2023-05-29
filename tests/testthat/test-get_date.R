test_that("Gets year, month or day from date column", {
  x <- data.frame(date = '2023-08-24')
  expect_equal(get_date(x$date, "year"), '2023')
})
