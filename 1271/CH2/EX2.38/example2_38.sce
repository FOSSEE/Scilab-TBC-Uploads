clc 
// Given that
n = 1 // no. of order
lambda1 = 5.89e-7 // wavelength of light in first case in meter
lambda2 = 5.896e-7 // wavelength of light in second case in meter
// Sample Problem 38 on page no. 2.53
printf("\n # PROBLEM 38 # \n")
N = lambda1 / (n * (lambda2 - lambda1)) // calculation for minimum no. of lines in grating
printf("Standard formula used \n lambda/d(lambda)=n*N. \n")
printf("\n Minimum no. of lines in grating = %f,",N)
