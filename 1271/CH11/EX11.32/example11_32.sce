clc 
// Given that
T = 4 // no. of year when rocket is moving corresponding to one year 
// Sample Problem 32 on page no. 11.30
printf("\n # PROBLEM 32 # \n")
printf(" Standard formula used \n")
printf(" t = t_0/((1-v^2/c^2)^1/2) \n")
v = 3e8 * sqrt(1 - (1 / T)^2)
printf("\n Speed of rocket is %f c.",v/3e8)
