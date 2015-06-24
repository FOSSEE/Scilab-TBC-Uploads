clc 
  
// Given that
lambda = 6000 // Wavelength of light in angstrom
n = 6 // Order of ring
D_n = 3.1 // Diameter of 6th fringe in mm
r = 1 // Radius of curvature of curved surface
// Sample Problem 28 on page no. 100
printf("\n # PROBLEM 28 # \n")
printf("\n Standard formula used \n Beta = lambda/(2*mu*theta)\n")
mu = 2*(2*n-1)*lambda*1e-10*r/(D_n*1e-3)^2 // Calculation of refractive index of material
printf("\n Refractive index of material is %f.",mu)
