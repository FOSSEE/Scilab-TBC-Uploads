clc 
// Given that
S = 5.55e-7 // separation between objects
lambda = 5461 // wavelength of light in angstrom

// Sample Problem 28 on page no. 173
printf("\n # PROBLEM 28 # \n")
printf(" Standard formula used \n")
printf(" S = 1.22*lambda/(2*NA)  \n")
NA = 1.22*lambda*1e-10/(2*S) // Calculation of numerical aperture 
printf("\n Numerical aperture is %f.",NA)
