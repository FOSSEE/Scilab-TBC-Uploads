clc 
// Given that
lambda = 5890 // wavelength of light in angstrom
a = 1 // Diameter of aperture in cm
// Sample Problem 36 on page no. 176
printf("\n # PROBLEM 36 # \n")
printf(" Standard formula used \n")
printf(" theta = 1.22*lambda/a  \n")
theta = 1.22*lambda*1e-10/(a*1e-2) // Calculation of resolving limit of telescope
printf("\n Resolving limit of telescope is %e rad.",theta)

