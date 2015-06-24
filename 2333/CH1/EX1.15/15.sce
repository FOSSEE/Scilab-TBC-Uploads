clc 
// Given that
t_0 = 12*60*60 // time of 12 hours in sec
t = t_0+30 // lose in time in sec for 12 hours
c = 3e8 // speed of light in m/s
// Sample Problem 15 on page no. 38
printf("\n # PROBLEM 15 # \n")
printf(" Standard formula used \n")
printf(" t = t_0/((1-v^2/c^2)^1/2) \n")
v = c * sqrt(1 - (t_0/t)^2)
printf("\n Speed of clock is %e meter/sec.",v)
