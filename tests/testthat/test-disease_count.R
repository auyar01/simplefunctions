test_that("Summing flu or dengue cases for a country in dataframe", {
  dataframe <- data.frame(country = c(rep("Belgium",10),rep("Germany",10),rep("France",10)), flu_count = round(runif(30,min=3,max=30)), dengue_count = round(runif(30,min=3,max=30)))
  expect_equal(disease_count(df = dataframe, country = "Belgium", disease = "dengue"), dataframe %>% filter(country == "Belgium") %>% summarise(sum=sum(dengue_count)) %>% .$sum)
  expect_equal(disease_count(df = dataframe, country = "Germany", disease = "flu"), dataframe %>% filter(country == "Germany") %>% summarise(sum=sum(flu_count)) %>% .$sum)

})




