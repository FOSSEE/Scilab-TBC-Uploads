clc 
// Given that 
X = 2.3e-5 // magnetic susceptibility of aluminium
mu_ = 4 * %pi * 1e-7 // magnetic permeability of space
// Sample Problem 5 on page no. 18.23
printf("\n # PROBLEM 5 # \n")
printf("Standard formula used \n ")
printf(" mu_r = 1 + Chi \n")
mur = 1 + X
mu = mu_ * mur
printf("\n Permeability of aluminium is %e N/A^2.",mu)
