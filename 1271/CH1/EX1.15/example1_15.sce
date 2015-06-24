
clc 
// Given that
fringe_width = 1.35e-2 // fringe width in meter
a = 0.5 // distance of bi prism from slits in meter
b = 0.5 // distance of bi prism from screen in meter
mu = 1.5 // refractive index of bi prism 
alpha = %pi / 360 // angle of bi prism in radian 
// Sample Problem 15 on page no. 1.45
printf("\n # PROBLEM 15 # \n")
D = a + b // calculation for distance between slits and screen 
lambda = (2 * a * (mu - 1) * alpha * fringe_width) / D // calculation for wavelength of light = %e meter
printf("\n Standard formula used \n D = a + b. \nlambda = (2 * a * (mu - 1) * alpha * fringe_width) / D.\n ") 
printf("\n Wavelength of light = %f A. ",lambda*1e10)
//Answer in the book:5893 A
//Answer in the program:589048.622541 A

