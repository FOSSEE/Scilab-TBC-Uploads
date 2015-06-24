clc 
// Given that
fringe_width = 9e-4 // fringe width in meter
a = 0.1 // distance of bi prism from slit in meter
b = 0.9 // distance of bi prism from screen in meter
lambda = 5.896e-7 // wavelength of light in meter
// Sample Problem 14 on page no. 1.45
printf("\n # PROBLEM 14 # \n")
D = a + b // calculation for distance between slits and screen
d = (lambda * D) / fringe_width // calculation for distance between coherent sources
printf("\n Standard formula used \n D = a + b. \n d = (lambda * D) / fringe_width.\n")
printf("\n Distance between coherent sources = %e meter. ",d)
