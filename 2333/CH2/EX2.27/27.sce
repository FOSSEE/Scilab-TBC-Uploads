clc 
// Given that
n = 15 // Order of ring
m = 5 // Order of ring
D_n = 0.59 // Diameter of 15th fringe in cm
D_m = 0.336 // Diameter of 5th fringe in cm
r = 100 // Radius of curvature of lens

// Sample Problem 27 on page no. 100
printf("\n # PROBLEM 27 # \n")
printf("\n Standard formula used \n Beta = lambda/(2*mu*theta)\n")
p = n-m // Difference of orders
lambda = ((D_n*1e-2)^2 - (D_m*1e-2)^2)/(4*p*r*1e-2) // Calculation of wavelength 
printf("\n Wavelength of light is %d angstrom.",lambda*1e10)
