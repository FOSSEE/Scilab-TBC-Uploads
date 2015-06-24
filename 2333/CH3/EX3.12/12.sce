clc 
// Given that
lambda= 5000 // wavelength of light in angstrom
n1 = 1 // order
n3 = 3 // order
N = 6000 // no. of lines per cm
// Sample Problem 12 on page no. 156
printf("\n # PROBLEM 12 # \n")
printf(" Standard formula used \n")
printf(" n*lambda= sin(theta)/N  \n")
theta_1 = 180/%pi*asin(n1*lambda*1e-8*N) // Deviation of first order spectra
theta_3 = 180/%pi*asin(n3*lambda*1e-8*N) // Deviation of third order spectra
theta_dif = theta_3- theta_1 // Difference in deviation of first and third order spectra
printf("\n Difference in deviation of first and third order spectra is %f degree.",theta_dif)
