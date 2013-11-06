# R-sig-geo: help for geo-related issues
# R-help: for general R issues

# Reproducible example. 
#     Piece of code (a script) that can be executed by 
#     anyone who has R, independently of the data present 
#     on his machino or any preloaded variables

library(raster)

vector <- c(3, 4, 12, NA, 1)        # Creates a vector
r <- raster (nrow = 20, ncol = 20)  # Creates a raster
random <- rnorm(n=20)               # Creates a random vector
random
plot(r)

data(kenya)
plot(kenya)

load (sp)
data(meuse)
?meuse
plot (meuse)

# Replace values

vector <- c(1,2,3,4,4,5,6)
vector

# To replace a value

vector[vector == 4] <- NA
vector
vector[is.na(vector)] <- 3          # Replaces NA for a value
vector

# To replace more than 1 value at a time

vector[vector %in% c(3,4)] <- NA
vector

# Classes types

a <- 'hello'
class (a)               # Class 'Character'
b <- 2
class (b)               # Class 'numeric'
c <- c(2, 4)
class (c)               # Class 'numeric'

# Conditionals

Hello <- function (name){
  if(is.character(name)){
    output <- paste ('Hello', name)
  } 
  else if (is.numeric(name)){
    output <- paste('Hello', name)
    warning ('object of class character expected')
  }
  else {
    stop ('object of class character expected')              # function to give an error
  }
  return (output)
}

# Error handeling: try() example

square <- function (x){
  out <- x * x
  return (out)
}

square (3)

list <- list(1,2,3,4,5)

out <- c()
for(i in 1:length(list)){
  out[i] <- square(list[[i]])         # To subset a list you need [[]]
}

list2 <- list(1,2,3,'wageningen',5)

square('wageningen')                  # Doesn't work. Error in x * x : non-numeric argument to binary operator

# Funtion for will crash in the middle for list2 since square cannot be applied to 'wageningen'

out <- c()
for(i in 1:length(list2)){
  out[i] <- square(list2[[i]])         
}
out

trySquare <- function(x){
  s <- try(square (x))            # If there is an error it will continue
  return (s)
}

# More information about try at "?try"

out <- c()
for(i in 1:length(list2)){
  out[i] <- trySquare(list2[[i]])         
}

out

# Clone repositories from github.com



