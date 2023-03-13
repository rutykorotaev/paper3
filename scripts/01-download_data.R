# Purpose: Downloads and saves the data from the US General Social Survey
# Author: Ruty Korotaev
# Data: March 13, 2023
# Contact: ruty.korotaiev@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####


#### Save data ####



# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         