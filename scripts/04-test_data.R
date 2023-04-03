# Purpose: Tests the data to ensure that the dataset has been properly cleaned and is ready for visualizations
# Author: Ruty Korotaev
# Data: March 13, 2023
# Contact: ruty.korotaiev@mail.utoronto.ca
# License: MIT

# Workspace setup
library(tidyverse)

#Test 1: Use unique function to ensure there are no duplicates in dataset
clean_respondent_data |> unique()

#Test 2: Use validator and is.numeric function to ensure all values are regarded as numeric

library(validate)
rules <- validator(
  is.numeric(relig),
  is.numeric(year),
  is.numeric(jew),
  is.numeric(spjew),
  is.numeric(jew16),
  is.numeric(spjew16),
  is.numeric(marital)
)

#Lint script
library(lintr)
lint("paper3/scripts.R")
lint("04-test_data)