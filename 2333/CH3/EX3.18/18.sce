clc 
// Given that
lambda = 5000 // mean wavelength in angstrom
n = 2 // order
N = 5000 // Grating lines per cm
theta = 30 // Angle in degree

// Sample Problem 18 on page no. 160
printf("\n # PROBLEM 18 # \n")
printf(" Standard formula used \n")
printf(" n*lambda= sin(theta)/N  \n")
e_d = n*lambda*1e-8/sin(theta*%pi/180) 
N = 1/e_d // number of lines per unit length
printf("\n Number of lines per unit centimeter is %d lines/cm.",ceil(N))
