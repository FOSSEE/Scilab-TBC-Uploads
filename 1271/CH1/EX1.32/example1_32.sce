clc 
// Given That
lambda = 5.890e-7 // wavelength of light in meter
theta = 1e-2 // angle of wedge in radian 
n = 12 // no. of dark fringe
Mu = 1 // refractive index of air
i = 0 // incidence angle in radian
r = 0 // refracted angle in radian
// Sample Problem 32 on page no. 1.51
printf("\n # PROBLEM 32 # \n")
x = ( n * lambda) / (2 * theta) // calculation for distance
printf("\n Standard formula used \n x = n*lambda/(2*theta).\n")
printf("\n Distance = %f mm. ",x*1000)
