clc 
// Given That
x = 6e-5 // distance moved by movable mirror in meter
N = 200 // no. of fringes crossed the field of view 
// Sample Problem 48 on page no. 1.57
printf("\n # PROBLEM 48 # \n") 
lambda = (2 * x) / N // calculation for wavelength of light
printf("\n Standard formula used \n lambda = (2 * X) / N. \n")
printf("\n Wavelength of light = %f A.",lambda * 1e10)
