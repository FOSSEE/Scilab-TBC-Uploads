clc 
// Given that
mu1 = 1.50 // refractive index for core
mu2 = 1.48 // refractive index for cladding
a = 25 // core radius in micro meter
lambda = 830 // wavelength of propagating light in nano meter
al = 2 // for parabolic profile
// Sample Problem 6 on page no. 263
printf("\n # PROBLEM 6 # \n")
del = (mu1-mu2)/mu1 
N_graded = (al/(al+2))*(2*%pi*a*1e-6/(lambda*1e-9))^2 * mu1^2 * del // Number of modes for graded
N_step = (2*%pi*a*1e-6/(lambda*1e-9))^2 * (mu1^2 - mu2^2)/2 // number of modes for step graded
ratio = (N_step / N_graded)
printf("\n Number of modes in graded index fiber is %d.",N_graded)
printf("\n Number of modes in Step graded fiber is %d.",N_step)
printf("\n Approximate ratio of number of modes in different grade is %d.",ceil(ratio))

