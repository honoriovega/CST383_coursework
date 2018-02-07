# LINK: https://docs.google.com/document/d/e/2PACX-1vRyQsliGdLdzkK1ONBC0EAlXl1e5FlKGtTSEgr7HX_bm8PJPsEojie-E-aqXdeKKDyFyMMd0MFzm6Wl/pub

# 1. Find the squared difference
myerr = function(x1,x2) {
  return( sum((x1-x2)^2) )
}

print(myerr(1:5, c(1.2, 2.1, 3.5, 4.0, 4.8)))


# 2. Write a function ‘myerr2’, which is like myerr but it take a third parameter, “tolerance”.  
#    This new function returns the fraction of elements having a squared difference above the tolerance.  
#    Again, write code to test your function.  An example:
myerr2 = function(x1,x2,tolerance) {
  
  differenceSquares = (x1-x2)^2 
  len = length(differenceSquares)
  greaterThanTolerance = differenceSquares[differenceSquares > tolerance]
  
  return(greaterThanTolerance/len)
}

percentage = myerr2(1:5, c(1.2, 2.1, 3.5, 4.0, 4.8), 0.2)
print(percentage)

# 3. Modify your myerr2 function so that the default value of the “tolerance” parameter is 0.2. 
#    Write a test in which you call myerr2 without the tolerance parameter.
myerr2 = function(x1,x2,tolerance=0.2) {
  
  differenceSquares = (x1-x2)^2 
  len = length(differenceSquares)
  greaterThanTolerance = differenceSquares[differenceSquares > tolerance]
  
  return(greaterThanTolerance/len)
}
percentage = myerr2(1:5, c(1.2, 2.1, 3.5, 4.0, 4.8))
print(percentage)

# 4. Write a function ‘edist’ that takes inputs x1,y1,x2,y2, and 
#  returns the Euclidean distance between (x1,y1) and (x2,y2).  
#   Write this function on one line of code.  Write code to test your function.  Example:

edist = function(x1,y1,x2,y2) {
  return(sqrt( (x2 - x1)^2 + (y2 - y1)^2 ))
}
print( edist(1,1,2,2) )


# 5. Write a function ‘df_dist’ that takes two parameters: a) a data frame with 
#    four numeric columns (x1,y1,x2,y2), and b) a distance function dist_fun.  
#     The function should return the vector that is the result of applying the distance 
#     function to each row of the data frame.  Use a ‘for’ loop in your function. 
#      Test your function by creating a data frame, and then calling your function using the ‘edist’ 
#      function you wrote in the previous problem.  

df_dist = function(a,b) {
  
}


# 6.If you still have time, write a function similar to the one in the previous problem.  Your new function should take as input a data frame with only two columns (x and y), and a distance function.  The data frame must have at least two rows.  
#   The result should be a vector of the distances between rows 1 and 2, rows 2 and 3, etc.