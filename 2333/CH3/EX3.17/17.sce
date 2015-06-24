clc 
// Given that
lambda = 5000 // mean wavelength in angstrom
n_tot = 15000 // total number of lines
l = 3 // length in cm
n = 1 // order
// Sample Problem 17 on page no. 160
printf("\n # PROBLEM 17 # \n")
printf(" Standard formula used \n")
printf(" n*lambda= sin(theta)/N  \n")
e_d = l/n_tot
theta = 180/%pi*asin(n*lambda*1e-8/e_d) // Angle of diffraction for maximum intensity in first order
printf("\n Angle of diffraction for maximum intensity in first order \nis %f degree.",theta)
