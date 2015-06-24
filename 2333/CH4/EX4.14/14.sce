clc 
// Given that
lambda = 5.89e-7 // wavelength of light in meter
mu_o = 1.658 // refractive index for ordinary light
mu_e = 1.486 // refractive index for extraordinary light 

// Sample Problem 14 on page no. 218
printf("\n # PROBLEM 14 # \n")
t = lambda / (4 * (mu_o - mu_e))
// calculation for thickness of plate of quartz
printf("\n Standard formula used \n t = lambda / (4 * (mu_o - mu_e)) ")
printf("\n Thickness of plate of calcite is %e meter.",t)
