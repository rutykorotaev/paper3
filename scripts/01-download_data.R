# Purpose: Downloads and saves the data from the US General Social Survey
# Author: Ruty Korotaev
# Data: March 13, 2023
# Contact: ruty.korotaiev@mail.utoronto.ca
# License: MIT
#Pre-requisites: None

# Workspace setup #
library(opendatatoronto)
library(haven)

# Download data 
zip_file <- "inputs/data/large_files/GSS_stata.zip"

download.file("https://gss.norc.org/documents/stata/GSS_stata.zip", zip_file)
unzip(zip_file, exdir = "inputs/data/large_files")

# Read DTA data and convert to csv
raw_gss_data <- read_dta("inputs/data/large_files/gss7221_r3b.dta")

# Extract Variables from GSS
library(dplyr)
raw_respondent_data <-
  raw_gss_data |>
  select(
    year,
    id,
    relig,
    jewaj,
    othjew,
    jew,
    relitena,
    age,
    spjew,
    denom,
    jew16,
    spjew16,
    spothjew,
    marital
  )

write.csv(x = raw_respondent_data,
  file = "inputs/data/raw_respondent_info.csv")

#Lint script
library(lintr)
lint("paper3/scripts.R")
lint("01-download_data.R)

         