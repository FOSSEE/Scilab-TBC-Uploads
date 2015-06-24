clc 
// Given that
d = 4 // distance of star from the earth in light years
v = 3e8 * sqrt(0.9999) // speed of rocket in meter/sec
// Sample Problem 33 on page no. 11.31
printf("\n # PROBLEM 33 # \n")
printf(" Standard formula used \n")
printf(" t = t_0/((1-v^2/c^2)^1/2) \n")
t = (2 * d * 3e8) / v
T_ = t * sqrt(1 - (v / 3e8)^2)
printf("\n Time taken by the rocket is %f year.",T_)
