clc 
// Given that
mu1 = 1.566 // refractive index for core
mu2 = 1.56 // refractive index for cladding
d = 50 // core diameter in micro meter
lambda = 0.84 // wavelength of propagating light in micro meter
// Sample Problem 7 on page no. 265
printf("\n # PROBLEM 7 # \n")
v = %pi*d*sqrt(mu1^2 - mu2^2)/lambda  // cut off number
N_max = v^2/2 // maximum number of modes
printf("\n Cut off parameter of fiber is %f. \n Maximum number of modes is %d.",v,N_max)

    
