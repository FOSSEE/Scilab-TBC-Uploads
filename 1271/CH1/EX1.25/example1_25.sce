clc 
// Given That
lambda1 = 6.1e-7 // max. wavelength of light in meter
lambda2 = 6e-7 // min. wavelength of light in meter
Mu = 1.333 // refractive index of  film 
i = %pi / 4 // incidence angle in radian 
// Sample Problem 25 on page no. 1.48
printf("\n # PROBLEM 25 # \n")
r = asin(sin(i) / Mu) // calculation for angle of refraction
n = lambda2 / (lambda1 - lambda2) // calculation for no. of bright band
t = (n * lambda1) / (2 * Mu * cos(r)) // calculation for thickness of the film
printf("\n Standard formulae used \n r = asin(sin(i) / Mu).\n n = lambda2 / (lambda1 - lambda2).\n t = (n * lambda1) / (2 * Mu * cos(r)).\n")
printf("\n Thickness of the film = %e meter. ",t)
