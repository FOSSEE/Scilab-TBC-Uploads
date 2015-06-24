clc 
// Given that
lambda = 5893 // mean wavelength in angstrom
n = 2 // order
N = 5000 // Grating lines per cm
theta = 2.5 // Separation in second

// Sample Problem 25 on page no. 166
printf("\n # PROBLEM 25 # \n")
d_theta = %pi/180*theta/60 // Angle in radian
d_lambda = d_theta*sqrt((1/(n*N)^2)-(lambda*1e-8)^2) // Difference in wavelengths
printf("Difference in wavelengths is %f angstrom.",d_lambda*1e8)

