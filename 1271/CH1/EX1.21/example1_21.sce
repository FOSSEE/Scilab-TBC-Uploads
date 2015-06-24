clc 
// Given That
lambda = 6e-7 // wavelength of light in meter
Mu = 1.463 // refractive index of soap film 
i = 0 // incidence angle in radian 
r = 0 // refracted angle in radian
// Sample Problem 21 on page no. 1.47
printf("\n # PROBLEM 21 # \n")
n = 1 // for smallest thickness
t = ((2 * n - 1) * lambda) / (4 * Mu * cos(r)) // calculation for least thickness of soap film for bright fringe
printf("\n Standard formula used \n t = ((2 * n - 1) * lambda) / (4 * Mu * cos(r)).\n")
printf("\n Least thickness of soap film for bright fringe = %e mm. ",t*1000)
