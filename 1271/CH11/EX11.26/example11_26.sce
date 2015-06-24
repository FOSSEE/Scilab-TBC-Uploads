clc 
// Given that
l = 2 // length of the rod in meter
v = 2.7e8 // speed of rod along its length in meter/sec
// Sample Problem 26 on page no. 11.28
printf("\n # PROBLEM 26 # \n")
printf(" Standard formula used \n")
printf(" l = l_0/((1-v^2/c^2)^1/2)  \n")
L = l * sqrt(1- (v / 3e8)^2)
printf("\n Length as it appear to the observer is %f meter.",L)
