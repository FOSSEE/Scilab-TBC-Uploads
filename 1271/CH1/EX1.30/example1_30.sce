clc 
// Given That
lambda = 4.56e-7 // wavelength of light in meter
theta = 1.9e-4 // angle of wedge in radian 
Mu = 1 // refractive index of air
// Sample Problem 30 on page no. 1.51
printf("\n # PROBLEM 30 # \n")
fringe_width = lambda / (2 * Mu * theta)// calculation for fringe width 
printf("\n Standard formula used \n w = lambda/(2*mu*alpha).\n")
printf("\n Fringe width = %f mm.",fringe_width*1000)
