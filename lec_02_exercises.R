# Exercise 1

## Part 1
##
## What is the type of the following vectors? Explain why they have that type.
##

A = c(1, NA+1L, "C")
typeof(A)
# We get a character because we have double, an integer+ unknown and a character. In such cases whenever there is
# a number and a character, R always choooses the character
B = c(1L / 0, NA)
typeof(B)
# we get double. In general R will always try to avoid the usage of NA. As it considers infinity to be NA


C = c(1:3, 5)
typeof(C)
# this will be evidently double because we are getting a list of numbers from one to 1,2,3,5 

D = c(3L, NaN+1L)
# an integer + double  = double but priority between a double and integer is double as R think it will miss some points
typeof(D)


E = c(NA, TRUE)
typeof(E)
# we get logical, because between nothing and logical, R chooses logical

## Part 2
##
## Considering only the four (common) data types, what is R's implicit type 
## conversion hierarchy (from highest priority to lowest priority)?
##
## Hint - think about the pairwise interactions between types.
##




# Exercise 2

## Below is a vector containing all prime numbers between 2 and 100:

primes = c( 2,  3,  5,  7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 
            43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97)

## If you were given the vector x = c(3,4,12,19,23,51,61,63,78), write the R 
## code necessary to print only the values of x that are not prime 
## (without using subsetting or the %in% operator).
##
## Your code should use nested loops to iterate through the vector of primes and x.
##

primes = c( 2,  3,  5,  7, 11, 13, 17, 19, 23, 29, 31, 37, 41,
            43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97)
x = c(3,4,12,19,23,51,61,63,78)
m = c()
for (i in x) {
  for (j in primes) {
    if (i = j & i %% j == 0){
      m = c(m,i)
      break
    }
  }
}
print(m)