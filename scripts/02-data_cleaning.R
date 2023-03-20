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

# Clean data
raw_respondent_data <- read.csv(file = "inputs/data/raw_respondent_info.csv")
clean_respondent_data <- raw_respondent_data %>%
  filter(year >= 2000 & year <= 2021) 

test <- unique(clean_respondent_data$jew)

no_missing_data <- na.omit(clean_respondent_data)

# Save data

# change cleaned_data to whatever name you end up with at the end of cleaning
write_csv(cleaned_data, "outputs/data/cleaned_data.csv")

