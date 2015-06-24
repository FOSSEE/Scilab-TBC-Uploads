clc 
// Given that
N = 6000 // Grating lines per cm
w = 10 // Width in cm
n = 2 // Order
m =3 // Order
lambda = 6000 // wavelength of light in angstrom
// Sample Problem 39 on page no. 177
printf("\n # PROBLEM 39 # \n")
printf(" Standard formula used \n")
printf(" lambda/d_lambda = n*N  \n")
n_tot = w*N // Total number of grating
P_res = n*n_tot // resolving power in nth order 
d_lambda = lambda/(m*n_tot) // Resolving power of grating
printf("Resolving power in 2nd order is %e \n Smallest wavelength that can be resolved is %f Angstrom",P_res,d_lambda)
