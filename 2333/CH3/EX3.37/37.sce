clc 
// Given that
N = 15000 // Grating lines per inch
w = 10 // Width in cm
n = 2 // Order
m =3 // Order
lambda = 6000 // wavelength of light in angstrom
// Sample Problem 37 on page no. 176
printf("\n # PROBLEM 37 # \n")
printf(" Standard formula used \n")
printf(" lambda/d_lambda = n*N  \n")
P_res = n*N // resolving power in nth order 
d_lambda = lambda/P_res // Resolving power of grating
printf("Resolving power in 2nd order is %e \n Smallest wavelength that can be resolved is %d Angstrom.",P_res,d_lambda*100)

