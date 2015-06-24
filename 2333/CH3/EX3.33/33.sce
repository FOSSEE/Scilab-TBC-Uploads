clc 
// Given that
f = 4 // Focal length of telescope objective in m
d = 100 // Diameter of lens of telescope in inch
lambda = 5000 // mean wavelength of light in angstrom

// Sample Problem 33 on page no. 175
printf("\n # PROBLEM 33 # \n")
printf(" Standard formula used \n")
printf(" theta = 1.22*lambda/a  \n")
a = d*2.54/100 // Diameter of lens of telescope in meter
theta = 1.22*lambda*1e-10/a  // Calculation of angle
printf("\n Smallest angle between two stars is %e rad.",theta)

