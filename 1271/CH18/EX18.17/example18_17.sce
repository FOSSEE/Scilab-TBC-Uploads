clc 
// Given that
l = 0.50 // length of iron rod in m
a = 4e-4 // area of cross section of rod in m^2
mu = 65e-4 // permeability of iron in H/m
fi = 4e-5 // flux in weber 
// Sample Problem 17 on page no. 18.27
printf("\n # PROBLEM 17 # \n")
printf("Standard formula used \n ")
printf("  N =H*l \n")
B = fi / a
H = B / mu
N = H * l
printf("\n Number of turns are %f",N)
