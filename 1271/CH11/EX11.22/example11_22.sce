clc 
// Given that
t = 1 // lose in time in an hour in minute
// Sample Problem 22 on page no. 11.27
printf("\n # PROBLEM 22 # \n")
printf(" Standard formula used \n")
printf(" t = t_0/((1-v^2/c^2)^1/2) \n")
v = 3e8 * sqrt(1 - ((60 - t) / 60)^2)
printf("\n Speed of clock is %e meter/sec.",v)
