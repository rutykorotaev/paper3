#### Preamble ####
# Purpose: Cleans GSS to include data from 2000-2021 
# Author: Ruty Korotaev
# Data: March 20, 2023
# Contact: ruty.korotaiev@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

# Workspace setup
library(tidyverse)
library(dplyr)
library(lubridate)

# Clean data to include only people who identified as Jews
raw_respondent_data <- read.csv(file = "inputs/data/raw_respondent_info.csv")
clean_respondent_data <- raw_respondent_data %>%
  filter(relig == 3 & year >= 1988 & year <= 2021)

# Save data
write_csv(clean_respondent_data, "inputs/data/cleaned_respondent_data.csv")

