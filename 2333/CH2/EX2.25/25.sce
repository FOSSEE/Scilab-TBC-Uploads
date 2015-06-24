clc 
// Given that
lambda = 6000 // Wavelength in angstrom
mu = 1.4 // Refractive index of soap film
Beta = 2 // Fringe width in mm
// Sample Problem 25 on page no. 100
printf("\n # PROBLEM 25 # \n")
printf("\n Standard formula used \n Beta = lambda/(2*mu*theta)\n")
theta = lambda*1e-10/(2*mu*Beta*1e-3) // Calculation of angle of wedge
printf("\n Angle of wedge is %e rad.", theta)
