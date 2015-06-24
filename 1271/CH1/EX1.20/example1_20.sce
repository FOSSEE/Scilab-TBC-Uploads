clc 
// Given That
lambda = 5.89e-7 // wavelength of light in meter
Mu_o = 1.4 // refractive index of oil film 
Mu_w = 1.33 // refractive index of water
i = %pi / 6 // incidence angle in radian 
n = 6 // no. of fringes seen
// Sample Problem 20 on page no. 1.46
printf("\n # PROBLEM 20 # \n")
r = asin(sin(i) / Mu_o) // calculation for angle of refraction
t = (n * lambda) / (2 * Mu_o * cos(r)) // calculation for thickness of film
printf("\n Standard formula used \n mu = sin(i)/sin(r),\n 1*mu*t*cos(r) = n*lambda. \n")
printf("\n Thickness of oil film = %e mm.",t*1000)
