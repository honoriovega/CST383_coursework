#
# Intro to Data Science: R homework for week 3
#

#@ 1
# Assign to variable x a vector of length 10 of
# randomly-generated numbers from 1 to 3.  (Hint: consider
# using function 'sample', and if you use it, think about
# parameter 'replace'.)
# (assignment to x)


#@ 2
# Assign to variable x a vector of ten
# simulated throws of a die.  Let the possible die values be 1,...,6.
# (assignment to x)


#@ 3
# Assign to vector x 1000 simulated rolls of a die.  In other
# words, the vector x should contain 1000 values.
# (assignment to x)


#@ 4 
# Plot a histogram using the data in your vector x.
# (plot)


#@ 5
# Assign 1000 simulated rolls of a die to vector x1,
# and another 1000 simulated rolls of a die to vector x2.
# (assignments to x1 and x2)


#@ 6
# When you roll two dice the sum of the two values ranges from 2 to 12.  Write 
# code to assign to vector y the sum of two dice rolled 1000 times.  In other
# words, the vector y should contain 1000 values.
# (assignment to y)


#@ 7
# Compute the fraction of the "rolls" in vector y having total value 2.
# (In other words, the fraction of rolls where both dice are 1.)  
# Assign the result to variable frac2.
# (assignment to frac2)


#@ 8
# You have just estimated the probability of rolling a total of 2 with two dice
# using simulation!
# What is the error of your estimate?  (Calculate the error as the absolute
# value of the difference between your estimate and the actual probability,
# divided by the actual probability.  If you don't know the probability of
# rolling two 1's, figure it out, using Google as a last resort.
# (expression)


#@ 9
# Plot a histogram of the y values you got in part 6.
# (plot)


#@ 10
# Write R code for a function 'prob_total' that will take a parameter k
# and will estimate that probability of getting value k as 
# the total when rolling two dice.  Have your
# function do this by simulating 10,000 rolls of two dice,
# and looking at which fraction of these rolls resulted in
# a total value of k.
# (assignment to prob_total)


#@ 11
# Call your program with parameter 7 to see the estimated
# probabiity of rolling 7.
# (expression)


#@ 12
# We now go from dice to birthdays.  Write R code to compute a vector 'bdays' 
# containing the birthdays (as a number from 1 to 365) of 30 randomly-selected people.
# This is not too different from problem 1.
# (assignment to bdays)


#@ 13
# Write an R expression that computes 0 if vector x contains no duplicates, and 
# computes 1 otherwise.
# (expression)


#@ 14
# Write R code to compute the birthdays of 30
# randomly-selected people 1000 times, and assign
# to variable bday_prob the fraction of the time that 
# two people share the same birthday
# (assignment to bday_prob)


#@ 15
# Write an R function that estimates the probability that
# two people among a room of randomly-selected people will
# share the same birthday.  The function should be named
# 'bday_prob', and should take a parameter 'num_people'.
# (assignment to bday_prob)


#@ 16
# Test your function 'bday_prob' by calling it on input parameter values 10, 20, 30, 40, and 50
# (expression)

#@ 17
# Create a plot that will show the estimated probability that
# two people in a room will share the same birthday.  The x axis
# of the plot should range from 5 to 50, and indicate the number
# of people in the room.  The y axis should range from 0 to 1 and
# represent the probability.  To create data for the plot, run
# your birthday on all input values of 5 to 50.
# (plot)


#@ 18
# Improve your plot by using color, by adding a title,
# x and y axis labels, and a grid.  Make the title "Esimated prob. of sharing a birthday",
# the x axis label "Number of people", and the y axis label "Prob. of sharing a birthday".
# Plot the curve as a line, not points.
# (plot)


#@ 19 
# Make another plot as in the previous problem, but this time generate the data using
# a modified version of your bday_prob function that takes 10,000 samples rather 
# than 1,000 samples.
# (plot)


#@ 20
# Based on your code, what would you guess is the probability that two people in 
# a class of 40 people share the same birthday?
# (constant)

