clc 
// Given that
l_0 = 100// let initial length of rod in m
l = 99 // Observed length in m
c = 3e8 // speed of light in m/s
// Sample Problem 13 on page no. 29
printf("\n # PROBLEM 13 # \n")
printf(" Standard formula used \n")
printf(" l = l_0/((1-v^2/c^2)^1/2)  \n")
v = c* sqrt(1-(l/l_0)^2)// speed of rocket in m/s
printf("\n Speed of rocket ship is %e m/s.",v)

