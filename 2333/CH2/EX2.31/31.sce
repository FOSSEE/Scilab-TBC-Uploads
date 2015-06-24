clc 
// Given that
lambda = 6000 // Wavelength of light in angstrom
n = 10 // Order of ring
D_n = 0.5 // Diameter of 10th fringe in m
// Sample Problem 31 on page no. 100
printf("\n # PROBLEM 31 # \n")
printf("\n Standard formula used \n Beta = lambda/(2*mu*theta)\n")
r = (D_n*1e-2)^2/(4*n*lambda*1e-10) // Calculation of diameter of dark ring
t = n*lambda*1e-10/2 // calculation of thickness of air column 
printf("\n Diameter of dark ring is %f cm \n Thickness of air column is %e cm.",r*1e2,t*1e2)

