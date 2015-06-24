clc 
// Given that
mu_e = 1.5442 // refractive index for extraordinary light
mu_o = 1.5533 // refractive index for ordinary light
lambda = 5e-7 // wavelength of plane polarized light in meter
// Sample Problem 19 on page no. 3.29
printf("\n # PROBLEM 19 # \n")
t = lambda / (2 * (mu_o - mu_e))// calculation for thickness of quartz plate
printf("Standard formula used \n t=lambda/4(mu_o-mu_e)\n")
printf("\n Thickness of quartz plate  = %e meter",t)
