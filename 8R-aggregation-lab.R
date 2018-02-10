
#
# lab work for R lecture 8, on aggregation
#

# read '1994-census-summary.csv' as a data frame named 'dat'.

dat = read.csv("https://raw.githubusercontent.com/grbruns/cst383/master/1994-census-summary.csv")

#############################################################
#
# table
#
#############################################################

# how many people in each category of education?
# (assign the result of your 'table' call to a variable 'edu_tbl')
edu_tbl = table(dat$education)
# plot the table with using function 'plot'


# plot the table with 'barplot'
barplot(edu_tbl)

# apply sort to edu_tbl, then plot
barplot(sort(edu_tbl))

# convert the table into a data frame, where one column
# shows education and the other column shows a count
# (hint: can you apply 'as.dataframe' to your table?)
mydataFrame = as.data.frame(edu_tbl)

# rename the columns of the data frame to "education" and "count"
names(mydataFrame) <- c("education", "count")
print(mydataFrame)

# sort the data frame by decreasing count values
# (hint: or order a data frame 'dat' by column 'x', you can
# write dat[order(dat$x),]) or dat[order(-dat$x),]  )
print(mydataFrame[order(-mydataFrame$count),])


# using 'table', find the count of each combination of sex and workclass
sexAndWorkClass = table(dat$sex,dat$workclass)

# convert your result to a dataframe, and then rename columns
results = as.data.frame(sexAndWorkClass)
names(results) <- c("Sex","Workclass","Frequency")
print(results)
#############################################################
#
# aggregate
#
#############################################################

# for each native country, what is the average education num?
averageEducationNumAcrossCountries = aggregate(education_num ~ native_country,data=dat,mean)
# sort the resulting data frame by decreasing mean education num
sortedIndexes = order(-averageEducationNumAcrossCountries$education_num)
print(averageEducationNumAcrossCountries[sortedIndexes,])
# for each occupation, compute the median age
averageAgeByOccupation = aggregate(age ~ occupation,data=dat,mean)

# order the output by increasing age
sortedAverageAgeByOccupation = averageAgeByOccupation[order(averageAgeByOccupation$age),] 
print(sortedAverageAgeByOccupation)

# plot the result as a bar plot
table(sortedAverageAgeByOccupation)

# Note: it is worthwhile to read the help page for 'aggregate'

#############################################################
# 
# applying functions over vectors
#
#############################################################

# write a function is_adult that returns TRUE just when the input
# number is >= 21


# apply this function to every value of the 'age' column using 'sapply'


# NOTE: very often functions can be applied directly to vectors
# to get a vector of results; other times sapply is needed

#############################################################
#
# applying functions over data frames
#
#############################################################

# create a data from by getting only capital_gain and capital_loss
# columns from dat


# create a vector consisting of the means of each column


# create a vector of boolean values indicating, for each row,
# whether at least one of the two values was 0


# using this vector, check whether all rows at at least 1 0

#############################################################
#
# the following are in case you have extra time
#
#############################################################

# find median age by occupation, not using aggregation, but by
# creating a box plot


# to make the occupation values easier to read, make a horizontal
# box plot


# advanced: using one aggregate function call, get both the average
# education_num for each native country, as well as the number of people
# associated with that native country
