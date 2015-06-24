clc 
// Given that
f = 4 // Focal length of telescope objective in m
a = 0.01 // Diameter of lens of telescope in m
lambda = 5500 // wavelength of light in angstrom

// Sample Problem 34 on page no. 175
printf("\n # PROBLEM 34 # \n")
printf(" Standard formula used \n")
printf(" theta = 1.22*lambda/a  \n")
theta = 1.22*lambda*1e-10/(a) 
x = f*theta // Separation between center of images in cm
printf("\n Separation between center of images is %e cm.",x*100)

