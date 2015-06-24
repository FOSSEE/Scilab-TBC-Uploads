clc 
// Given that
lambda = 5e-7 // wavelength of light in meter
mu_e = 1.553 // refractive index for extraordinary light
mu_o = 1.544 // refractive index for ordinary light
// Sample Problem 12 on page no. 3.27
printf("\n # PROBLEM 12 # \n")
t = lambda / (2 * (mu_e - mu_o)) // calculation for thickness of half-wave plate of quartz
printf("\n Standard formula used \n t = lambda / (2 * (mu_e - mu_o)). \n")
printf("\n Thickness of half-wave plate of quartz = %e meter",t)
