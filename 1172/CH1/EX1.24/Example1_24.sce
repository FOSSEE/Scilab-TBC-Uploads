clc
// Given That
lambda1=5.89e-5// wavelength in cm
lambda2=5.896e-5//wavelength in cm
t=2.5// width of grating in cm
n=2// for second order spectrum
//Sample Problem 24 Page No. 56

printf("\n # Problem 24 # \n")
printf(" \n Standard formula used \n   lambda / d_lambda = n*N \n")
N=lambda1/ (lambda2-lambda1)/n
grating_element=N/t
printf(" Minimum number of lines required is %f .\n ",grating_element)

