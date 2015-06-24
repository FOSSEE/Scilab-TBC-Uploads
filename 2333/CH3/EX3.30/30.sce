clc 
// Given that
N = 40000 // Total number of lines on grating
lambda = 5000 // wavelength of light in angstrom
e_d = 12.5e-5 // Separation between centers of slits in cm
// Sample Problem 30 on page no. 173
printf("\n # PROBLEM 30 # \n")
printf(" Standard formula used \n")
printf(" n = e_d/lambda  \n")
n = e_d*1e-2/(lambda*1e-10) // Maximum possible order calculation
P_res = floor(n)*N // Maximum resolution power
printf("\nMaximum resolution power is %d.",P_res)
