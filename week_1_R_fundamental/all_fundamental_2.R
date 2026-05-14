# For LOOP
for(i in 1: 5){
  print("I can do it. I have to do it")
}
for(j in 1: 9){
  print(j)
}
#Built in Function
ages <- c(23,64,22,13,64,76,32,12)
max(ages)
min(ages)
mean(ages)
median(ages)
difference <- max(ages) - min(ages)
difference

bp <- c(54,57,33,87)
bp2 <- c(54,57,33,87, 400)
# 1= mean
mean(bp)     #=57.75
mean(bp2)     #=126.2    #Huge difference

# 2 median
median(bp)     #= 55.5
median(bp2)      #=57    # In median the difference is not that big!

#Variation
sd(bp)           #=22.2317
sd(bp2)          #= 154.265       #Again! the difference is very big! 
#Variation
IQR(bp)        #15.75     #IQR = Interquartile Range
IQR(bp2)       #33

q1 <- quantile(bp2, .25)
q2 <- quantile(bp2,.50)
q3 <- quantile(bp2, .75)
q3 - q1                         #75% or 33

# My / User defined function
add_two <- function(n1 , n2){
  result<- n1 + n2
  return(result)
}

add_two(55, 34)
add_two(20,10)

# Another function - multiplication
multi <- function(p1, p2){
  result <- p1 * p2
  result2 <- p1^p2
  return(c(result, result2))
}

multi(3, 5)







