clc 
// Given that
lambda = 1.25e-6 //wavelength of light in meter
mu1 = 1.46 // refractive index for core
mu2 = 1.457 // refractive index for cladding
// Sample Problem 11 on page no. 5.20
printf("\n # PROBLEM 11 # \n")
NA = sqrt(mu1^2 - mu2^2)//calculation for numerical aperture
k = (2.4 * lambda) / ( %pi * NA)
printf("\n Standard formula used \n d<8*lambda/(pi*NA)\n")
printf("\n Maximum diameter of core = %f micro meter",k*1e6)
