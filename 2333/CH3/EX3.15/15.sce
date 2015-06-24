clc 
// Given that
lambda_1 = 6000 // wavelength of light in angstrom
lambda_2 = 4500 // wavelength of light in angstrom
theta = 30 // Angle in degree

// Sample Problem 15 on page no. 158
printf("\n # PROBLEM 15 # \n")
printf(" Standard formula used \n")
printf(" n*lambda= sin(theta)/N \n")
n = lambda_2/(lambda_1-lambda_2) // order calculation
e_d = n*lambda_1*1e-8/sin(theta*%pi/180) 
N = 1/e_d // Number of lines per cm
printf(" \n Number of lines per cm is %d.\n",N )

