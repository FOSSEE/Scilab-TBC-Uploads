clc 
// Given that
lambda_1 = 5890 // wavelength of light in angstrom
lambda_2 = 5896 // wavelength of light in angstrom
n = 2 // order
// Sample Problem 31 on page no. 174
printf("\n # PROBLEM 31 # \n")
printf(" Standard formula used \n")
printf(" RP = n*N  \n")
d_lambda = lambda_2-lambda_1 // Difference between wavelengths
lambda = (lambda_1+lambda_2)/2 // Average wavelength
N = lambda/(n*d_lambda) // Number of lines in grating 
printf("\nMinimum number of grating required to resolve wavelengths is %d",N)

   
