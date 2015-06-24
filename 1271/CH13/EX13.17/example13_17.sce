
clc 
// Given that
lambda = 0.710 // wavelength of x-ray in angstrom
x1 = 1 // coordinate on x axis of plane
y1 = 0 // coordinate on y axis of plane
z1 = 0 // coordinate on z axis of plane
a = 2.814 // lattice parameter of of crystal in angstrom
// Sample Problem 17 on page no. 13.30
printf("\n # PROBLEM 17 # \n")
printf(" Standard formula used \n")
printf(" n*lambda = 2 * d * sin(theta)\n")
n = 2 // for second order
d = a / sqrt(x1^2 + y1^2 + z1^2)
theta = asind((n * lambda) / (2 * d))
printf("\n Glancing angle is %f degree.",theta)

