# Purpose: Simulates the dataset for 
# Author: Ruty Korotaev
# Data: March 13, 2023
# Contact: ruty.korotaiev@mail.utoronto.ca
# License: MIT

# Workspace setup 
library(tidyverse)

# Simulate dataset

set.seed(500)

#Simulate dataset by how many people strongly identify as Jewish over the last 20 years
tibble(
  years = 1:20, 
  strong_jews = runif(n = 20, min = 1, max = 500)
)



