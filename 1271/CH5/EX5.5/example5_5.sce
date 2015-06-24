clc 
// Given that
NA = 0.22 // numerical aperture
delta_mu = 0.012 // fractional refractive index
// Sample Problem 5 on page no. 5.17
printf("\n # PROBLEM 5 # \n")
mu1 = sqrt(NA^2 / (1 - (1 - delta_mu)^2))
mu2 = (1 - delta_mu) * mu1
printf("\n Standard formula used \n mu1 = sqrt(NA^2 / (1 - (1 - delta_mu)^2)). \n mu2 = (1 - delta_mu) * mu1. \n")
printf("\n Refractive index for core = %f.\n Refractive index for cladding = %f.",mu1,mu2)
