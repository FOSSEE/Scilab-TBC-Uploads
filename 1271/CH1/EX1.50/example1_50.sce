clc 
// Given That
n = 50 // no. of bands crosses the line of observation 
lambda1 = 5.896e-7 // max. wavelength of light in meter
lambda2 = 5.89e-7 // min. wavelength of light in meter
// Sample Problem 50 on page no. 1.57
printf("\n # PROBLEM 50 # \n") 
x = lambda1 * lambda2 /(lambda1 - lambda2) // calculation for the path difference
printf("\n Standard formula used \n t = n*lambda /2*(mu-1)\n")
printf("\n The path difference = %f mm.",x*10^3)
