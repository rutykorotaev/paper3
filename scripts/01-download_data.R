# Purpose: Downloads and saves the data from the US General Social Survey
# Author: Ruty Korotaev
# Data: March 13, 2023
# Contact: ruty.korotaiev@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(opendatatoronto)
library(haven)

#### Download data ####

# Download & unzip all the GSS data across the years
zip_file <- "inputs/data/large_files/GSS_stata.zip"

download.file("https://gss.norc.org/documents/stata/GSS_stata.zip", zip_file)
unzip(zip_file, exdir = "inputs/data/large_files")

# read dta data and write to csv
raw_gss_data <- read_dta("inputs/data/large_files/gss7221_r3a.dta")


## Filter and save data related to respondent info and survey questions

# Respondent information
raw_respondent_info <-
  raw_gss_data |>
  select(
    year,
    id,
    jewaj,
    othjew,
    jew,
    relitena,
    age,
    spjew,
    denom,
    jew16,
    spjew16,
    spothjew
  )

write_csv(
  x = raw_jew_info,
  file = "inputs/data/raw_jew_info.csv"
)

         