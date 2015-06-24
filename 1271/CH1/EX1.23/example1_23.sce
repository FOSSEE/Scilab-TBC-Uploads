clc 
// Given That
lambda1 = 4e-7 // max. wavelength of light in meter
lambda2 = 5e-7 // min. wavelength of light in meter
Mu = 1.4 // refractive index of soap film 
i = %pi / 4 // incidence angle in radian 
t = 1e-5 // thickness of oil film in meter
// Sample Problem 23 on page no. 1.47
printf("\n # PROBLEM 23 # \n")
r = asin(sin(i) / Mu) // calculation for angle of refraction
n1 = (2 * Mu * t * cos(r)) / lambda1 // calculation for no. of dark bands seen in the case of max. wavelength 
n2 = (2 * t * Mu * cos(r)) / lambda2 // calculation for no. of dark seen in the case of min. wavelength 
n = floor(n1) - floor(n2) // claculation for no. of dark bands seen between wavelengths
printf("\n Standard formula used \n r = asin(sin(i) / Mu).\n n = (2 * Mu * t * cos(r)) / lambda.\n")
printf("\n No. of dark bands seen between wavelengths. = %d",n)
