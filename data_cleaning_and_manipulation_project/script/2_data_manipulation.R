#load the packages.
library(rio)
library(tidyverse)

#Import data
raw_data <- import("data_cleaning_and_manipulation_project/data/raw/pulse_data.csv")
# lets change the NA of this data,
raw_data$Height[is.na(raw_data$Height)] <- mean(raw_data$Height, na.rm = TRUE)

#dplyr -> select, filter, mutate, group_by , summaries
# A      Select
# 1) select column by name and column number.
names(raw_data)
select(raw_data, Height)
select(raw_data, 1)
# Select multiple column by name and number.
select(raw_data, Height, Weight, Gender)
select(raw_data, c(1,2,3))
select(raw_data, 1:4)
# How to remove column ?? just give a (-) sign before the column name.
# 2) remove column by name and column number.
select(raw_data, -Height)
select(raw_data, -2)
# remove multiple column by name and number.
select(raw_data, -c(2,3,4))


#B    Filtering ROW
# Filter equality and inequality
filter(raw_data, Gender == "Male")

filter(raw_data, Gender != "Male")


# filter greater , less 
filter(raw_data, Age > 18)
filter(raw_data, Age >= 18)
filter(raw_data, Age < 18)
filter(raw_data, Age <= 18)

# filter logical and "&" and logical or "|"
filter(raw_data, Age > 18 & Gender == "Female")

filter(raw_data, Age > 18 | Gender == "Female")

# %in% operator | useful in likert scale

filter(raw_data, Exercise %in% c("High", "Low"))

# Select + filter
selected <- select(raw_data, Age, Gender, Alcohol)
filter(selected, Age > 18 & Gender == "Male")
# Pipeline operator

raw_data |> 
  select(Age, Gender, Alcohol) |> 
  filter(Age > 18 & Gender == "Male")
# Mutate function - to create a new column.
raw_data |> 
  mutate(BMI = Weight / Height ^2)
names(raw_data) # the new variable is not added,  assign to the same dataset.

raw_data <- raw_data |> 
  mutate(BMI = Weight / Height ^2)
# Now we have got this
# BMI category using pipeline and case_when:-

raw_data <- raw_data |> 
  mutate(BMI_Category = case_when(
    BMI < 18.5 ~ "Underweight",
    BMI >= 18.5 & BMI < 24.9 ~ "Normal",
    BMI > 25 & BMI < 29.9 ~ "Overweight",
    BMI > 30 ~ "Obesity"
  ))

raw_data
# Group_ by / Grouping data
raw_data |> 
  group_by(Gender) |> 
  summarise(Mean_age = mean(Age),
            sd_age = sd(Age))

# Ro arrange / sort the data Use the arranging function
raw_data |> 
  group_by(Exercise) |> 
  summarise(mean_age = mean(Age)) |> 
  arrange(desc(mean_age))

# Renaming column / variable

raw_data |> 
  rename(Bmi_Cat = BMI_Category)


# Now lets export the data using - Rio package
export(raw_data, "data_cleaning_and_manipulation_project/data/processed/processed_data_by_gopaldas.csv")

clean_data <- import("data_cleaning_and_manipulation_project/data/processed/processed_data_by_gopaldas.csv")
clean_data













