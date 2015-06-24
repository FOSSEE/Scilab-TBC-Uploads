clc 
// Given that
X = 9.5e-9 // susceptibility of medium 
mu_ = 4*%pi * 1e-7 // permeability of space in N/A^2
// Sample Problem 19 on page no. 18.28
printf("\n # PROBLEM 19 # \n")
printf("Standard formula used \n ")
printf(" mu_r = 1 + Chi \n")
mu = mu_ * (1 + X)
mu_r = mu / mu_
printf("\n Relative permeability is 1 + %e",mu_r -1)
