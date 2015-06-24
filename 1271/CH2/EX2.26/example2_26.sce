clc 
// Given that
N = 500000 // no. of lines in plane transmission grating per meter
theta = %pi / 6 // angle at which second order spectral line is observed in radian
n = 2 // order of spectral line
// Sample Problem 26 on page no. 2.48
printf("\n # PROBLEM 26 # \n")
lambda = sin(theta) / (2 * N) // calculation for wavelength of light
printf("\n Standard formula used \n lambda = sin(theta) / (2 * N). \n ")
printf("\n wavelength of light = %e meter. ",lambda)
