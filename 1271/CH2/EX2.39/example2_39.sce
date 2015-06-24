clc 
// Given that
n = 3 // no. of order
theta = %pi / 6 // view angle of third order in radian
lambda1 = 5.89e-7 // min. wavelength of light in meter
lambda2 = 5.896e-7 // max.wavelength of light in meter
// Sample Problem 39 on page no. 2.53
printf("\n # PROBLEM 39 # \n")
mean_lambda = (lambda1 + lambda2) / 2 // calculation for mean wavelength
s = (n * mean_lambda) / sin(theta) // calculation for grating space b+d
N = lambda1 / (n * (lambda2 - lambda1)) // calculation for minimum no. of lines in grating
printf("\n Standard formula used \n mean_lambda = (lambda1 + lambda2) / 2. \n s = (n * mean_lambda) / sin(theta). \n N = lambda1 / (n * (lambda2 - lambda1)). \n")
printf("\n Grating space = %e meter. \n Total width of ruled surface = %e meter. ",s,s * N)
