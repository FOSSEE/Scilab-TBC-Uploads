clc 
// Given that
NA = 0.12 // Numerical aperture
lambda = 6e-5 // wavelength of light in cm

// Sample Problem 29 on page no. 173
printf("\n # PROBLEM 29 # \n")
printf(" Standard formula used \n")
printf(" RP = 2*NA/lambda  \n")
RP = 2*NA/(lambda) // Resolving power for non self luminous objects
printf("\n Maximum resolution power is %d.",ceil(RP))
