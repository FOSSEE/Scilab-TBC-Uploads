clc 
// Given that
n = 2 // no. of order
lambda1 = 5.89e-7 // wavelength of light in first case in meter
lambda2 = 5.896e-7 // wavelength of light in second case in meter
// Sample Problem 37 on page no. 2.52
printf("\n # PROBLEM 37 # \n")
N = lambda1 / (n * (lambda2 - lambda1)) // calculation for minimum no. of lines in grating 
printf("\n Standard formula used \n N = lambda1 / (n * (lambda2 - lambda1)). \n") 
printf("\n Minimum no. of lines in grating = %f,",N)
