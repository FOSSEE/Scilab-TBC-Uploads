clc 
// Given that
lambda = 5460 // Wavelength in angstrom
t = 6.3e-4 // Thickness of plate in cm
n = 6 // order of fringe

// Sample Problem 17 on page no. 100
printf("\n # PROBLEM 17 # \n")
printf("\n Standard formula used \n (mu - 1)*t = n*lambda\n")
mu = n*lambda*1e-10/(t*1e-2) +1 // Calculation of thickness of glass plate 
printf("\n Refractive index of sheet is %f.", mu)
