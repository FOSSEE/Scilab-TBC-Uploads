clc 
// Given that
f = 3 // acceleration of pendulum in m/sec^2
l = 1 // length of pendulum in meter
g = 9.8 // acceleration due to gravity in m/sec^2
// Sample Problem 10 on page no. 7.25
printf("\n # PROBLEM 10 # \n")
T = 2 * %pi * sqrt(l / (g + f))
printf("\n Standard formula used \n T = 2 * pi * sqrt(l / (g + f)). \n ") 
printf("\n Time period of pendulum = %f sec.",T)
