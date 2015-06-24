clc 
// Given that
r = 1 / 2 // ratio of area of circular lamina in frame S_ to the ratio of area of circular lamina in frame S
// Sample Problem 21 on page no. 11.26
printf("\n # PROBLEM 21 # \n")
printf(" Standard formula used \n")
printf(" d = d_0/((1-v^2/c^2)^1/2)  \n")
v = 3e8 * sqrt(1 - r^2)
printf("\n Velocity of frame S_ w.r.t. frame S is %e meter/sec.",v)
