#Gopal Das. date: April-29/2026

#import CSV data 
my_data <- read.csv("r_prepdata.csv")

#view data
head(my_data)
tail(my_data)
View(my_data)


#Rows are Observations
#columns are variables
my_data[1,3]
my_data[ ,3]
my_data$Name


#Installing Packages
install.packages("tidyverse")
library("tidyverse")
require("tidyverse")

my_data %>% 
  select(Name,Age, Department, Salary) %>% 
  filter(Age > 21 & Salary > 30000)


# Editing and Tracking changes --------------------------------------------
#Lets see How this Works.? 








