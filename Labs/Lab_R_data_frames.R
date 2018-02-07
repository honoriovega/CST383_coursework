#Author: Honorio Vega
#Date: 02/01/2018
# CST383 - Data Science - Lab: R Data Frames

# 1. Create a simple data frame named ‘dat’ from two vectors 
#  v1 has values “foo”, “bar”, “baz”, and “whatevs”
#  v2 has values 1 through 4
v1 = c("foo","bar","baz","whatevs")
v2 = 1:4
dat = data.frame(jargon=v1,points=v2,stringsAsFactors = FALSE)

# 2. Examine your data frame in RStudio by clicking on it in the ‘values’ pane in the upper right of the interface.

# 3. Get the number of rows of dat.
numOfRows = nrow(dat)

# 4. Get the number of rows of dat.
columnNames = colnames(dat)

# 5. Get the second row
print(dat[2,])

# 6. Get the column “jargon”.
jargonColumn = dat$jargon

# 7. Get the “jargon” values for rows 1 and 2.
print(jargonColumn[c(1,2)] )

# 8. Get rows for which the “points” column value is > 2.
print(dat[dat$points > 2,])

# 9. Get rows for which the length of the “jargon” column value is > 3.
print(dat[nchar(jargonColumn) > 3,])

# 10 Get two randomly-selected rows.
print(dat[sample(1:nrow(dat),2),])

# 11. Change the name of column “jargon” to “slang”.
# 12. Add a row to the data frame having a “slang” value of “quz” and a “points” value of 5.
# 13. Use R to compute the mean value of the ‘points’ column.
# 14. Calculate the average value of the “points” column.
# 15. In English, explain what happens when you execute “which(dat$points < 3)”.  Compare your answer against the R documentation (obtained using ‘?’).
# 16. Add a column to the data frame, with name ‘year’ (meaning year the slang term was introduced), and with whatever year values you like.
# 17. Create a new data frame, called, dat1, by selecting columns 1 and 3, and rows 2-5, of dat.