#install.packages("gtsummary")
#install.packages("gt")
#install.packages("easystats")
library(tidyverse)
library(rio)
library(gt)
library(gtsummary)

#data import
buzz_data <- import("data_cleaning_and_manipulation_project/data/raw/pulse_data.csv")

#summary table

buzz_data |> 
  select(Age, Height, Weight) |> 
  tbl_summary() |> 
  as_gt() |> 
  gtsave("data_cleaning_and_manipulation_project/results/health_details.docx")


buzz_data |> 
  select(Age, Alcohol, Smokes) |> 
  tbl_summary() |> 
  as_gt() |> 
  gtsave("data_cleaning_and_manipulation_project/results/drugs_consumption.docx")


buzz_data |> 
  select(Age, Height, Gender) |> 
  tbl_summary(by = Gender) |> 
  add_p() |> 
  bold_p(t = 0.05) |> 
  as_gt() |> 
  gtsave("data_cleaning_and_manipulation_project/results/gender_differnce_&_pvalue.docx")
  





