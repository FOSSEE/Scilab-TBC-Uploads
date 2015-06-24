clc 
// Given that
lambda = 5900 // Wavelength of light in angstrom
n = 10 // Order of ring
D_n = 0.5 // Diameter of 10th fringe in cm

// Sample Problem 29 on page no. 118
printf("\n # PROBLEM 29 # \n")
printf("\n Standard formula used \n Beta = lambda/(2*mu*theta)\n")
r = (D_n*1e-2)^2/(4*n*lambda*1e-10) // Calculation of diameter of dark ring
t = n*lambda*1e-10/2 // calculation of thickness of air column 
printf("\n Diameter of dark ring is %f m \n Thickness of air column is %em.",r,t)
