#### Preamble ####
# Purpose: Cleans the raw data of Toronto's cost of living for the parameters
# Author: Hyunje Park
# Date: 24 September 2024
# Contact: hyunje.park@mail.utoronto.ca 
# Pre-requisites: 01-download_data.R, packages listed below.

#### Workspace setup ####
#install.packages('opendatatoronto')
#install.packages("dplyr")
#install.packages('tidyverse')
#install.packages('sf')
#install.packages('devtools')

library(tidyverse)
library(dplyr)
library(testthat)

# get the cleaned dataset
cleaned_data = read_csv(here::here('data/cleaned_data/cleaned_data.csv'))


#### Test cleaned_data ####
### NEED TO TEST INCOME/EXPENSE IS PROPER ###

# test 1 - test that it has all the columns
test_that("Has all the columns",
          {expected = c("vendor",
                        "vendor_count"
                       )
          expect_equal(colnames(cleaned_data), expected)})

# test that the dataframe contains no NA values
test_that("No NA values", 
          {expect_equal(sum(is.na(cleaned_data)), 0)})

# test that all the Income sources are positive values
# (cant have negative Income)
test_that("All Income variables are not negative",
          {expect_true(all(cleaned_data_inverted$"vendor_count" >= 0))})
          

