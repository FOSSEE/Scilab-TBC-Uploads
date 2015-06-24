clc 
   
// Given that
N = 4000 // Grating lines per cm
n = 2 // order
lambda = 5000 // wavelength of light in angstrom

// Sample Problem 23 on page no. 165
printf("\n # PROBLEM 23 # \n")
printf(" Standard formula used \n")
printf(" d_theta /d_lambda = n/(e+d)*cos(theta)  \n")
theta = asin(n*lambda*1e-8*N) // Calculation of angle in radian
ratio = n*N/(cos(theta)) // where ratio = d_theta /d_lambda
printf("Dispersive power of grating is %d.",ratio)
