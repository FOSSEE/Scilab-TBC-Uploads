clc 
// Given that
t_0 = 24*60 // time of 24 hours in min
t = t_0+4 // lose in time in min for 24 hours
c = 3e8 // speed of light in m/s
// Sample Problem 16 on page no. 39
printf("\n # PROBLEM 16 # \n")
printf(" Standard formula used \n")
printf(" t = t_0/((1-v^2/c^2)^1/2) \n")
v = sqrt(2*(t/t_0 -1 ))*c // By binomial theoram
printf("\n Speed of clock is %e meter/sec.",v)

