clc 
// Given that
lambda = 1.25e-6 //wavelength of light in meter
mu1 = 1.465 // refractive index for core
mu2 = 1.460 // refractive index for cladding
// Sample Problem 8 on page no. 5.18
printf("\n # PROBLEM 8 # \n")
NA = sqrt(mu1^2 - mu2^2)
k = (2.4 * lambda) / ( %pi * NA)
Mm = 0.5 * ((%pi * 50e-6 * NA) / lambda)^2
printf("\n Standard formula used \n NA = sqrt(mu1^2 - mu2^2). \n k = (2.4 * lambda) / ( pi * NA). \n Mm = 0.5 * ((pi * 50e-6 * NA) / lambda)^2. \n ")
printf("\n Diameter of core < %e meter,\n number of modes = %d",k,Mm)
