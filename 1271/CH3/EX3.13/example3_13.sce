clc 
// Given that
lambda = 5.893e-7 // wavelength of light in meter
mu_e = 1.533 // refractive index for extraordinary light
mu_o = 1.554 // refractive index for ordinary light
// Sample Problem 13 on page no. 3.27
printf("\n # PROBLEM 13 # \n")
t = lambda / (4 * (mu_o - mu_e)) // calculation for thickness of quartz plate
printf("\n Standard formula used \n t = lambda / (4 * (mu_o - mu_e)). \n ")
printf("\n Thickness of quartz plate  = %e meter",t)
