clc 
// Given that
lambda_1 = 6000 // wavelength of light in angstrom
lambda_2 = 4800 // wavelength of light in angstrom
theta = asin(0.75) // Angle of diffraction

// Sample Problem 20 on page no. 165
printf("\n # PROBLEM 20 # \n")
printf(" Standard formula used \n")
printf(" n*lambda= sin(theta)/N \n")
n = lambda_2/(lambda_1-lambda_2) // order calculation
e_d = (n+1)*lambda_2*1e-8/sin(theta) // Grating Element
printf(" \n Grating Element is %e cm.\n",e_d )

