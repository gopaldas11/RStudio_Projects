#Install Packages.
#install.packages("pak")
#packages for data manipulation.
#pak::pkg_install(c("rio", "tidyverse"))
#load the packages.
library(rio)
library(tidyverse)

#Import data
raw_data <- import("data_cleaning_and_manipulation_project/data/raw/pulse_data.csv")

#exploring the data
head(raw_data, n = 10)
tail(raw_data, n = 10)
dim(raw_data)
nrow(raw_data)
ncol(raw_data)
names(raw_data)

# Sampling
sample(raw_data)
sample_n(raw_data, 20)
sample_frac(raw_data, .25)

# Summary of data
summary(raw_data)

#check the structure.
str(raw_data)
glimpse(raw_data)

# Data type conversion(as family)
raw_data$Gender <- as.factor(raw_data$Gender)
raw_data$Ran <- as.factor(raw_data$Ran)
raw_data$Smokes <- as.factor(raw_data$Smokes)
raw_data$Alcohol <- as.factor(raw_data$Alcohol)
raw_data$Exercise <- as.factor(raw_data$Exercise)

# Check missing value . VVi
sum(is.na(raw_data))        # ans = 6

#Check duplicate row ! 
sum(duplicated(raw_data))   # ans = 0

# How to deal with missing value ?
# 1. remove missing value = na.omit(data)
# 2. Imputation with (mean , sd)
# We will do - 2:-
raw_data$Height[is.na(raw_data$Height)] <- mean(raw_data$Height, na.rm = TRUE)
          # Here we are replacing the missing value with mean.
sum(is.na(raw_data$Height))

mean(raw_data$Height)
sd(raw_data$Height)

median(raw_data$Height)
IQR(raw_data$Height)

# Categorical data
#1. Frequency 
table(raw_data$Gender)
prop.table(table(raw_data$Gender))
prop.table(table(raw_data$Gender)) * 100







