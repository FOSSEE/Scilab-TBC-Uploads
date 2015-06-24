clc 
// Given that
alpha = %pi / 180 // angle of bi prism in radian
mu = 1.5 // refractive index of biprism 
a = 0.4 // distance of bi prism from slit in meter
b = 0.6 // distance of bi prism from screen in meter
lambda = 5.893e-7 // wavelength of light in meter
// Sample Problem 11 on page no. 1.43
printf("\n # PROBLEM 11 # \n")
D = a + b // calculation for distance between slits and screen
fringe_width = (lambda * D) / (2 * a * (mu - 1) * alpha) // calculation for fringe width
printf("\n Standard formula used \nD = a + b.\n fringe_width = (lambda * D) / (2 * a * (mu - 1) * alpha).\n ")
printf("\n Fringe width = %e meter.",fringe_width)
