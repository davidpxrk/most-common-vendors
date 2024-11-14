#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Hyunje Park
# Date: 24 September 2024
# Contact: hyunje.park@mail.utoronto.ca 
# Pre-requisites: Packages listed below

#### Workspace setup ####
library(tidyverse)

#### EXPECTED DATA ####
# Columns: Income 1-11, Expense 1-6
# 
# All the variables contain values within the specified ranges below.
# Determined by the average of the scenarios.

# number of observations
obs = 100

#### Simulate data ####
simulated_data <-
  tibble(
    "count" = sample(1:25000, obs, replace = TRUE),
  )

# ensure all item columns exist
simulated_data
names(simulated_data)

# get the sum of item count
simulated_data$"sum_income" <- rowSums(subset(simulated_data, select = c("count"
)))

# FINAL TEST - should be greater than 0
# implying there vendors actually have items
print(sum(simulated_data$count > 0))






