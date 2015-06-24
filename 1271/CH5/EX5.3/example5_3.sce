clc 
// Given that
mu_0 = 1 // refractive index of air
mu1 = 1.5 // refractive index for core
mu2 = 1.48 // refractive index for cladding
// Sample Problem 3 on page no. 5.16
printf("\n # PROBLEM 3 # \n")
theta_c = asin(mu2 / mu1) * (180 / %pi)
delta_mu = (mu1 - mu2) / mu1
NA = sqrt(mu1^2 - mu2^2)
theta_0 = asin(NA) * (180 / %pi)
printf("\n Standard formula used \n theta_c = asin(mu2 / mu1) * (180 / pi). \n delta_mu = (mu1 - mu2) / mu1. \n NA = sqrt(mu1^2 - mu2^2). \n theta_0 = asin(NA) * (180 / pi). \n ")
printf("\n Critical angle = %f degree. \n Numerical aperture = %f. \n Acceptance angle = %f degree.\n Fractional refractive index = %f.",theta_c,NA,theta_0,delta_mu)
