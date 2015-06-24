clc 
// Given That
n = 50 // no. of bands crosses the line of observation 
lambda = 5.896e-7 // wavelength of light in meter
mu = 1.4 // refractive index 
// Sample Problem 49 on page no. 1.57
printf("\n # PROBLEM 49 # \n") 
t = n*lambda / (2*(mu-1)) // calculation for thickness of the plate
printf("\n Standard formula used \n t = n*lambda /2*(mu-1)\n")
printf("\n Thickness of the plate = %e m.",t)
