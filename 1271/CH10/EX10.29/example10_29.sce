clc 
// Given that
H = 1 // magnitude of magnetic field vector A/m
e0 = 8.85e-12 // electric permittivity of space
mu0 = 1.2567e-6 // magnetic permittivity of space
c = 3e8 // speed of light in meter/sec
// Sample Problem 29 on page no. 10.48
printf("\n # PROBLEM 29 # \n")
r = sqrt(mu0 / e0) // ratio of E,H
E = H * r
printf("Standard formula used \n H_/E_=sqrt(e_/mu_).\n")
printf(" Magnitude of electric field vector = %f v/m.",E)
