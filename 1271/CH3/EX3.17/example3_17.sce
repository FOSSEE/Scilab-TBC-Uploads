clc 
// Given that
lambda = 5.89e-7 // wavelength of light in meter
mu_e = 1.54 // refractive index for extraordinary light
mu_o = 1.55 // refractive index for ordinary light
// Sample Problem 17 on page no. 3.28
printf("\n # PROBLEM 17 # \n")
t = lambda / (4 * (mu_o - mu_e)) // calculation for thickness of quartz plate
printf("\n Standard formula used \n t = lambda / (4 * (mu_o - mu_e))")
printf("\n Thickness of quartz plate  = %e meter",t)
