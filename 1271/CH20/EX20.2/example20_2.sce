clc 
// Given that
V = 30e3 // voltage in V
lambda_min = 0.414e-10 // shortest wavelength in m
e = 1.6e-19 // charge on an electron in C
c = 3e8 // speed of light in m/sec
// Sample Problem 2 on page no. 20.7
printf("\n # PROBLEM 2 # \n")
printf("Standard formula used \n ")
printf("h*c/lambda = eV \n")
h = (e * V * lambda_min) / c
printf("\n Planck constant is %e J sec.",h)
