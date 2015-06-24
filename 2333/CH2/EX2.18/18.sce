clc 
// Given that
lambda = 6e-5 // Wavelength in cm
t = 1.2e-6 // Thickness of plate in cm
n = 1 // order of fringe

// Sample Problem 18 on page no. 100
printf("\n # PROBLEM 18 # \n")
printf("\n Standard formula used \n (mu - 1)*t = n*lambda\n")
mu = n*lambda*1e-2/(t) +1  // Calculation of thickness of glass plate 
printf("\n Refractive index of sheet is %f.", mu)

