clc 
// Given that
lambda = 5.89e-7 // wavelength of light in meter
mu_e = 1.486 // refractive index for extraordinary light
mu_o = 1.658 // refractive index for ordinary light
// Sample Problem 15 on page no. 3.28
printf("\n # PROBLEM 15 # \n")
t = lambda / (4 * (mu_o - mu_e)) // calculation for thickness of calcite plate 
printf("\n Standard formula used \n t = lambda / (4 * (mu_o - mu_e)). \n")
printf("\n Thickness of calcite plate  = %e meter",t)
