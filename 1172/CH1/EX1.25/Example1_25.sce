clc
// Given That
a=12e-5// slit width in cm
lambda1=5.89e-5// wavelength in cm
lambda2=5.896e-5//wavelength in cm
n=2// for second order spectrum
//Sample Problem 25 Page No. 56
printf("\n # Problem 25 # \n")
printf(" \n Standard formula used \n   lambda / d_lambda = n*N \n\n")
d_lambda = lambda2-lambda1
grating_element= lambda1/ (d_lambda*n)

printf(" Minimum number of lines required is %d . \n ", ceil(grating_element))
