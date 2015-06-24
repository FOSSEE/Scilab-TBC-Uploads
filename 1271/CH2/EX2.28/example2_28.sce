clc 
// Given that
lambda = 5e-7 // wavelength of light in meter
theta = %pi / 6 // angle at which second order spectral line is observed in radian
n = 2 // order of spectral line
// Sample Problem 28 on page no. 2.49
printf("\n # PROBLEM 28 # \n")
k = (n * lambda) / sin(theta) // calculation for (b+d)
N = 1 / k // calculation for no. of lines in per cm
printf("\n Standard formula used \n b+d = (n * lambda) / sin(theta). \n N = 1 / k. \n ")
printf("\n No. of lines per cm = %f ",N / 100)
