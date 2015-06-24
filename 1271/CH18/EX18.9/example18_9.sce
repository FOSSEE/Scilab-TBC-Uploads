clc 
// Given that 
H = 1e3 // magnetisation field in A/m
phi = 2e-5 // magnetic flux in Weber
a = 0.2e-4 // area of cross section in m^2
mu_ = 4 * %pi * 1e-7 // magnetic permeability of space
// Sample Problem 9 on page no. 18.24
printf("\n # PROBLEM 9 # \n")
printf("Standard formula used \n ")
printf(" mu_r = 1 + Chi \n")
B = phi / a
mu = B / H
X = mu / mu_ - 1
printf("\n Permeability is %e N/A^2.\n Susceptibility is %f .",mu,X)
