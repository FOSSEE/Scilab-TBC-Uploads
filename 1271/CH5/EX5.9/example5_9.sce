clc 
// Given that
lambda = 0.85e-6 //wavelength of light in meter
mu1 = 1.461 // refractive index for core
mu2 = 1.456 // refractive index for clad
d = 4e-5 // diameter of core in meter
// Sample Problem 9 on page no. 5.19
printf("\n # PROBLEM 9 # \n")
NA = sqrt(mu1^2 - mu2^2)
Mm = 0.5 * ((%pi * d * NA) / lambda)^2
printf("\n Standard formula used \n NA = sqrt(mu1^2 - mu2^2). \n Mm = 0.5 * ((pi * d * NA) / lambda)^2. \n ")
printf("\n Numerical aperture = %f.\n Number of modes = %d. ",NA,Mm)
