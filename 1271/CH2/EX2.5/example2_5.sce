clc 
// Given that
lambda = 5e-7 // wavelength of light in meter
d = 1e-3 // diameter of the first ring of zone plate in meter
// Sample Problem 5 on page no. 2.39
printf("\n # PROBLEM 5 # \n")
n = 1 // no. of half period zone
D = (d^2) / (4 * lambda * n) // calculation for distance of screen from opening
printf("\n Standard formula used \n D = (d^2) / (4 * lambda * n). \n")
printf("\n Distance of screen from opening = %f meter ",D)
