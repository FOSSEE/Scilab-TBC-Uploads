clc 
// Given that
theta = 10 // Angle in second
mu = 1.4 // Refractive index of soap film
Beta = 0.5 // Fringe width in cm
// Sample Problem 26 on page no. 100
printf("\n # PROBLEM 26 # \n")
printf("\n Standard formula used \n Beta = lambda/(2*mu*theta)\n")
lambda = (2*mu*Beta*1e-2*theta*(%pi/(60*60*180))) // Calculation of wavelength 
printf("\n Wavelength of light is %d angstrom.",lambda*1e10)
