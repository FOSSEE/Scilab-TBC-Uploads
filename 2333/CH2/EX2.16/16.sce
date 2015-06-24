clc 
// Given that
lambda = 5450 // Wavelength in angstrom
mu = 1.5 // Refractive index of material
n = 3 // order of fringe

// Sample Problem 16 on page no. 100
printf("\n # PROBLEM 16 # \n")
printf("\n Standard formula used \n (mu - 1)*t = n*lambda\n")
t = n*lambda*1e-10/(mu-1) // Calculation of thickness of glass plate 
printf("\n Thickness of glass plate is %f mm.", t*1e3)

