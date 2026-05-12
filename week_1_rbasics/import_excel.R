library(readxl)
dataset <- read_excel("RStudio_Projects/r_practice_data.xlsx", 
                      sheet = "Sheet1", na = "**")
View(dataset)

