clc 
// Given That
lambda = 5.89e-7 // wavelength of light 
Mu_o = 1.46 // refractive index of oil film 
i = %pi / 6 // incidence angle in radian 
n = 8 // no. of fringe is seen
// Sample Problem 22 on page no. 1.47
printf("\n # PROBLEM 22 # \n")
r = asin(sin(i) / Mu_o) // calculation for angle of refraction
t = (n * lambda) / (2 * Mu_o * cos(r)) // calculation for thickness of oil film
printf("\n Standard formula used \n r = asin(sin(i) / Mu_o.\n t = (n * lambda) / (2 * Mu_o * cos(r)).\n")
printf("\n  Thickness of oil film = %e mm. ",t*1000)
