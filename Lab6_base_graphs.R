# Author: Honorio Vega
# Date : February 6 , 2018




#      1	 We’ll start with the built-in ‘mtcars’ data set.  Create a basic scatterplot showing each car’s mpg as a function of engine displacement.  (in other words, mpg goes on the y axis and displacement on the x axis.) Use the ‘plot’ function.
plot(mtcars$dis,mtcars$mpg)
#      2	Change the x,y axis labels to “displacement” and “mileage (mpg)”.  
plot(mtcars$dis,mtcars$mpg,xlab="Displacement",ylab="Mileage (mpg)")
#      3	Make the dots dark blue.
plot(mtcars$dis,mtcars$mpg,xlab="Displacement",ylab="Mileage (mpg)",col="darkblue")
#      4	Make the dots solid.
plot(mtcars$dis,mtcars$mpg,xlab="Displacement",ylab="Mileage (mpg)",col="darkblue",pch=16)
#      5	Add a grid.
grid(plot(mtcars$dis,mtcars$mpg,xlab="Displacement",ylab="Mileage (mpg)",col="darkblue",pch=16))
#      6	Add a title.
grid(plot(mtcars$dis,mtcars$mpg,xlab="Displacement",ylab="Mileage (mpg)",col="darkblue",pch=16,main="bruh"))
#      7	Add a dotted red horizontal line showing the average miles per gallon.
#      8	Color the dots according to whether manual or automatic transmission (column ‘am’, where am == 0 mean automatic transmission).  
#      9	Add a legend.  
#     10	Compute the number of cars for each possible value of number of cylinders, using the following R code:  tbl = table(mtcars$cyl)
#     11	Produce a simple barplot, with one bar for each possible number of cylinders (4,6,8).  
#     12	Improve your barplot by adding title, x/y axis labels, and color.
#     13	Create a simple box plot showing mileage as a function of number of cylinders.  Use function ‘boxplot’.
#     14	Improve your boxplot by adding color, title, and x/y axis labels.
#     15	Switching to the Old Faithful data (built-in data set ‘faithful’), plot a histogram of eruption length (column ‘eruptions’).
#     16	Try using 15 breaks
#     17	Try a different color.
#     18	Change the title an x axis label.
#     19	Save your histogram to a png file using the RStudio plot pane (Export > Save as Image).
