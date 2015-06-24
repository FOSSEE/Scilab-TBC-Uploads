clc 
// Given that
lambda = 5.89e-7 // wavelength of light in meter
mu_e = 1.553 // refractive index for extraordinary light
mu_o = 1.544 // refractive index for ordinary light
// Sample Problem 18 on page no. 3.28
printf("\n # PROBLEM 18 # \n")
t = lambda / (4 * (mu_e - mu_o)) // calculation for thickness of quartz plate
printf("\n Standard formula used \n t = lambda / (4 * (mu_e - mu_o)).\n")
printf("\n Thickness of quartz plate  = %e meter",t)
