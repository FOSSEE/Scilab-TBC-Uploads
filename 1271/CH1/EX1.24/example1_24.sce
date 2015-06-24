clc 
// Given That
lambda = 5.89e-7 // wavelength of light in meter
Mu = 1.5 // refractive index of soap film  
r = %pi / 3 // refracted angle in radian
// Sample Problem 24 on page no. 1.48
printf("\n # PROBLEM 24 # \n")
n = 1 // for smallest thickness
t = (n * lambda) / (2 * Mu * cos(r)) // calculation for least thickness of soap film for bright fringe
printf("\n Standard formula used \n t = (n * lambda) / (2 * Mu * cos(r)).\n")
printf("\n Least thickness of soap film for bright fringe = %e meter. ",t)
