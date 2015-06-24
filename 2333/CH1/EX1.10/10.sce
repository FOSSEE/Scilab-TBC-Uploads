clc 
 
// Given that
l_0 = 1// let initial length of rod in m
l = 0.99 // Observed length in m
c = 3e8 // speed of light in m/s
// Sample Problem 10 on page no. 27
printf("\n # PROBLEM 10 # \n")
printf(" Standard formula used \n")
printf(" l = l_0/((1-v^2/c^2)^1/2)  \n")
v = c* sqrt(1-(l/l_0)^2)// speed of rocket in m/s
printf("\n Speed of rocket is %e m/s.",v)

