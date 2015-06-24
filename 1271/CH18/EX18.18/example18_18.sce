clc 
// Given that
H = 600 // magnetic flux in A/m
a = 0.2e-4 // area of cross section of rod in m^2
phi = 2.4e-5 // flux in weber 
mu_ = 4*%pi * 1e-7 // permeability of space in N/A^2
// Sample Problem 18 on page no. 18.27
printf("\n # PROBLEM 18 # \n")
printf("Standard formula used \n ")
printf(" mu_r = 1 + Chi \n")
B = phi / a
mu = B / H
X = mu / mu_ - 1
printf("\n Permeability is %f N/A^2.\n Susceptibility is %f.",mu,X)
