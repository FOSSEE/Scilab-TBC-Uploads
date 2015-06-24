clc 
// Given That
lambda = 6e-7 // wavelength of light in meter
Mu = 1.463 // refractive index of soap film 
i = 0 // incidence angle in radian 
r = 0 // refracted angle in radian
// Sample Problem 26 on page no. 1.49
printf("\n # PROBLEM 26 # \n")
n = 1 // for smallest thickness
t = ((2 * n - 1) * lambda) / (4 * Mu * cos(r)) // calculation for thickness of soap film
printf("\n Standard formula used \n 2*mu*t*cos(r)=(2n-1)*lambda/2. \n")
printf("\n Least thickness of soap film for bright fringe = %e meter. ",t)
