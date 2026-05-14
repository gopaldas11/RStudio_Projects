
#Vectors
neumeric_seq <- 1:100
seq_fun <- seq(2, 50, 5)

minor <- seq_fun[seq_fun < 18]
adult <- seq_fun[seq_fun >= 18]

#Categorical data / Factor
# First way using - factor
smoking_factor <- factor(c("yes","no", "no", "yes", "yes"))
# second way using as.factor from as family
smokint_as_factor <- as.factor(smoking_factor)
smokint_as_factor

#Matrix
met1 <- matrix(1:16 , ncol = 4, nrow = 4)
met1
met2 <- matrix(1:36, ncol = 6, nrow = 6, byrow = TRUE)
met2

ncol(met2)
nrow(met2)
colnames(met2)
colnames(met2) <- c("A", "B", "C", "D", "E", "F")
met2

#Data Frame
df <- data.frame(
  ID = c("C01","C02", "Co3"),
  Age = c(22,44,34),
  Gender = c("F", "M", "F"),
  Repeated_customer = c("yes", "no", "yes")
)

data <- data.frame(
  ID = c("C01","C02", "Co3"),
  Age = c(22,44,34),
  Gender = c("F", "M", "F"),
  Repeated_customer = c("yes", "no", "yes")
)
str(data) # To see what kind of data in  the data frame.

data$Gender
data$Gender <- as.factor(data$Gender)
str(data)

data$Repeated_customer <- as.factor(data$Repeated_customer)
str(data)

summary(df)
summary(data)

#Condition or Decision IF
ages_customer <- c(12,55,32,11,44,22,17,18,11,33,22,15)
ifelse(ages_customer > 18, "Adult", "Child")

BMI <- c(27.4, 22.8, 38.4, 15.4, 46.7, 24.1, 33.2, 19.5,
         35.8, 29.1, 21.3, 41.2, 25.6, 18.2, 31.5)
category <- ifelse(BMI < 18.5, "Underweight",
            ifelse(BMI <= 24.9, "Healthy",
            ifelse(BMI < 29.9, "Overweight", "Obese")))
category























