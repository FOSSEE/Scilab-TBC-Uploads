clc 
// Given that 
X = 9.4e-2 // magnetic susceptibility
mu_ = 4 * %pi * 1e-7 // magnetic permeability of space
// Sample Problem 6 on page no. 18.23
printf("\n # PROBLEM 6 # \n")
printf("Standard formula used \n ")
printf(" mu_r = 1 + Chi \n")
mu_r = 1 + X
mu = mu_ * mu_r
printf("\n Absolute permeability is %e N/A^2.\n Relative permeability is %f.",mu,mu_r)
