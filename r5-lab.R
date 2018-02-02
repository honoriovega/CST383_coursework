dat = read.csv("https://raw.githubusercontent.com/grbruns/cst383/master/1994-census-summary.csv")

# View the first few lines of dat
print(head(dat))

# print the number of rows 
print(nrow(dat))

# Print the unique values in marital statues column
print(unique(dat$marital_status))

# print the amount of unique countrys in the country column
print(length(unique(dat$native_country)))


# 8 What are the min and max age values found in column “age”?
allAges = dat$age

print( paste("Min age", min(allAges), "Max age", max(allAges)))

# print a subset of data , a random sample of 500 rows
dat1 = dat[sample(1:nrow(dat),500),]

# print the number of rows in the random sample, should be 500
print(nrow(dat1))

print(dat1)
#write.csv(dat1,"census-sample.csv")

