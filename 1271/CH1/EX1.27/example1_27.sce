clc 
// Given That
lambda1 = 6.1e-7 // max. wavelength of light in meter
lambda2 = 6e-7 // min. wavelength of light in meter
Mu = 4 / 3 // refractive index of film 
i = asin(4 / 5) // incidence angle in radian 
// Sample Problem 27 on page no. 1.49
printf("\n # PROBLEM 27 # \n")
r = asin(sin(i) / Mu) // calculation for angle of refraction
n = lambda2 / (lambda1 - lambda2) // calculation for order of fringe
t = (n * lambda1) / (2 * Mu * cos(r)) // calculation for thickness of film
printf("\n Standard formula used \n mu = sin(i)/sin(r),\n 2*mu*t*cos(r) = n*lambda. \n")
printf("\n Thickness of the film = %e mm. ",t*1000)
