clc 
// Given that
r = 0.5 // ratio of length of rod when it is in motion to the length of the rod when it is in rest 
// Sample Problem 28 on page no. 11.29
printf("\n # PROBLEM 28 # \n")
printf(" Standard formula used \n")
printf(" l = l_0/((1-v^2/c^2)^1/2)  \n")
v = 3e8 * sqrt(1 - r^2)
printf("\n Speed of the rod relative to observer is %f c.",v/3e8)
