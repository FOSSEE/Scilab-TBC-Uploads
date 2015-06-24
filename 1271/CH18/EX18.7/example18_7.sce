clc 
// Given that 
mu = 0.126 // maximum value of the permeability in N/A^2
mu_ = 4 * %pi * 1e-7 // magnetic permeability of space
// Sample Problem 7 on page no. 18.23
printf("\n # PROBLEM 7 # \n")
printf("Standard formula used \n ")
printf(" mu_r = 1 + Chi \n")
mu_r = mu / mu_
X = mu_r - 1
printf("\n Magnetic susceptibility is %f .\n Relative permeability is %e",X,mu_r)
