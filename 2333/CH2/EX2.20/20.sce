clc 
// Given that
lambda = 5890 // Wavelength in angstrom
mu = 1.6 // Refractive index of material
n = 3 // order of fringe
// Sample Problem 20 on page no. 100
printf("\n # PROBLEM 20 # \n")

printf("\n Standard formula used \n (mu - 1)*t = n*lambda\n")
t = n*lambda*1e-10/(mu-1) // Calculation of thickness of mica sheet
printf("\n Thickness of mica sheet is %e cm.", t*1e2)
