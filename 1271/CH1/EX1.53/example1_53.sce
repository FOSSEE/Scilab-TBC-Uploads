clc 
// Given That
x = 2.945e-4 // distance moved by movable mirror in meter
lambda = 5.893e-7 // mean wavelength of light in meter
// Sample Problem 53 on page no. 1.58
printf("\n # PROBLEM 53 # \n") 
delta_lambda = lambda^2 / (2*x) // calculation for difference between two wavelengths
printf("\n Standard formula used \n delta_lambda = lambda^2 / (2*x). \n")
printf("\n Difference between two wavelengths = %f A.",delta_lambda*1e10)
