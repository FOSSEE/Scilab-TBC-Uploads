clc 
// Given that
lambda = 6000 // wavelength of first source in angstrom

d = 2 // Spacing between sources in mm
D = 0.1 // Distance between source and screen in meter
t = 0.5 // Thickness of plate in mm
shift = 5 // Shift of fringe in mm

// Sample Problem 7 on page no. 95
printf("\n # PROBLEM 7 # \n")
printf("\n Standard formula used \n x = D*(mu1)*n*lambda/d \n")
mu = 1+ shift*1e-3*d*1e-3/(D*t*1e-3) // Refractive index of Glass plate
printf("\n Refractive index of Glass plate is %f.",mu)
