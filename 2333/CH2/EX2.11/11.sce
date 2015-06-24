clc 
// Given that
n = 3 // order of dark fringe
m = 11 // Order of bight fringe
s = 8.835 // Separation between 4th dark and 11 bright fringe
D = 100 // Separation between source and screen in centimeter
d = 0.5 // Separation between coherent sources in mm

// Sample Problem 11 on page no. 97
printf("\n # PROBLEM 11 # \n")
printf("\n Standard formula used \n x = D*n*lambda/d \n")
Beta = s*1e-3/(m - (2*n+1)/2) // Calculation of fringe width 
lambda = Beta*d*1e-3/(D*1e-2) // Calculation of wavelength of sauce in meter
printf("\n Wavelength of sauce is %d Angstrom.",lambda*1e10)
