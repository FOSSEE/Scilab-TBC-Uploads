clc 
// Given that 
n = 200 // no. of turns 
l = 0.5 // the mean length of iron wire in m
phi = 4e-4 // magnetic flux in Weber
a = 4e-4 // area of cross section in m^2
mu = 6.5e-4 // permeability of iron in wb/Am
mu_ = 4 * %pi * 1e-7 // magnetic permeability of space
// Sample Problem 11 on page no. 18.25
printf("\n # PROBLEM 11 # \n")
printf("Standard formula used \n ")
printf("B = mu*N*I \n")
B = phi / a
N = n / l
I = B / (mu * N)
printf("\n Current through the winding is %f A. ",I)
