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

