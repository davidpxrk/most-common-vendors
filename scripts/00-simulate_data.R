#### Preamble ####
# Purpose: Simulates the vendor count is proper
# Author: Hyunje Park, Charlie Zhang
# Date: November 11 2024
# Contact: hyunje.park@mail.utoronto.ca 
# Pre-requisites: Packages listed below

#### Workspace setup ####
library(ggplot2)

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






