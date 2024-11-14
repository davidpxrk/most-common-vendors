#### Preamble ####
# Purpose: tests the grocery price data
# Author: Hyunje Park, Charlie Zhang
# Date: November 14 2024
# Contact: hyunje.park@mail.utoronto.ca 
# Pre-requisites: 01-download_data.R, packages listed below.

#### Workspace setup ####
#install.packages('ggplot2')
library(ggplot2)


# get the cleaned dataset
cleaned_data = read_csv(here::here('data/cleaned_data/cleaned_data.csv'))


#### Test cleaned_data ####
### need to test vendor_count is proper ###

# test 1 - test that it has all the columns
test_that("Has all the columns",
          {expected = c("vendor",
                        "vendor_count"
                       )
          expect_equal(colnames(cleaned_data), expected)})

# test that the dataframe contains no NA values
test_that("No NA values", 
          {expect_equal(sum(is.na(cleaned_data)), 0)})

# test that vendor_count are positive values
# (cant have negative Income)
test_that("All Income variables are not negative",
          {expect_true(all(cleaned_data_inverted$"vendor_count" >= 0))})
          

