# einfache Funktion:
fahrenheit <- function(x) {x*(9/5)+32}
fahrenheit(30)
y <- c(20:30)
fahrenheit(y)

# Funktion mit Rückgabe-Kontrolle:
celsius_2_fahrenheit <- function(C) {
  F <- C*9/5+32
  return(paste("The entered Celsius temperature is",F,"degrees Fahrenheit."))}
celsius_2_fahrenheit(20)

# mit mehreren Argumenten und Default-Wert
convert_temp <- function(temp, unit="C") {
  if (unit=="C") {D <- temp*9/5+32  }
  else if (unit =="F") {D <- (temp-32) *(5/9)}
  else {D <- message("Please enter a unit - F or C")}
  return(D)
}
convert_temp(20)

f3 <- function(x, y) {
  rep(y, length.out = length(x))
}
f3(c(1:4),9)

simple_calc <- function(x, y){
  a <- x + y
  d <- a^2
  return(d)
}
simple_calc(1,3)


###---- Datacamp Writing Functions in R
# https://campus.datacamp.com/courses/writing-functions-in-r/a-quick-refresher?ex=1

add <- function(x,y=1){
  x+y
}

formals(add)
body(add)
environment(add)
add(2,3)
#--Datacamp Quizz:
f <- function(x) {
  if (TRUE) {
    return(x + 1)
  }
  x
}
f(2)
##----https://campus.datacamp.com/courses/writing-functions-in-r/a-quick-refresher?ex=8

f1 <- function(x) {
  y1 <- 5
  x + y1
}
f1(5)
y1


#--- A safer way to create the sequence
# https://campus.datacamp.com/courses/writing-functions-in-r/a-quick-refresher?ex=14

df <- data.frame()
1:ncol(df)

for (i in 1:ncol(df)) {
  print(median(df[[i]]))
}