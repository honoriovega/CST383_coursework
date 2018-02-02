#Author: Honorio Vega
#Date: 02/01/2018
# CST383 - Data Science - Lab: R I/O and packages


# 3. Read the census summary data as data frame ‘dat’
dat = read.csv("https://raw.githubusercontent.com/grbruns/cst383/master/1994-census-summary.csv")

# 4.Look at the first lines of the data frame
print(head(dat))

# 5. How many rows in the data frame?
print(nrow(dat))

# 6. What are all the distinct values found in column “marital_status”?
print(unique(dat$marital_status))

# 7. How many distinct values are found in column “native_country”?
print(length(unique(dat$native_country)))


# 8. What are the min and max age values found in column “age”?
allAges = dat$age
print( paste("Min age", min(allAges), "Max age", max(allAges)))

# 9.Create a data frame ‘dat1’ by randomly sampling 500 rows of the data frame (without replacement).
dat1 = dat[sample(1:nrow(dat),500),]

# 10. Check to make sure ‘dat1’ has 500 rows
paste("dat1 length is 500:",nrow(dat1) == 500)

# 11. Write data frame ‘dat1’ to a CSV file named ‘census-sample.csv’.
write.csv(dat1,"census-sample.csv")

# 12. Save the data frame ‘dat’ to an R binary file named ‘census-binary.RData’.
save(dat,file="census-binary.RData")

# 13. Clear all objects from your R environment.
rm(list = ls())

#14. Load the ‘dat’ object from file ‘census-binary.RData’.  Did it appear to load faster than when you read the data from a CSV file? YES
load("census-binary.RData")
