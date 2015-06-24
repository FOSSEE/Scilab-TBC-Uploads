clc 
// Given That
lambda = 6e-7 // wavelength of light in meter
Mu = 1 // refractive index of air film
l = 6e-5 // diameter of wire in meter
L = 0.15 // distance of wire from edge in meter
i = 0 // incidence angle in radian 
r = 0 // refracted angle in radian 
// Sample Problem 29 on page no. 1.50
printf("\n # PROBLEM 29 # \n")
theta = l / L //calculation for theta
fringe_width = lambda / (2 * Mu * theta) // calculation for fringe width
printf("\n Standard formula used \n w = lambda/(2*mu*theta).\n")
printf("\n Fringe width = %f mm.",fringe_width*1000)
