clc 
// Given that
x1 = 1 // coordinate on x axis of plane
y1 = 0 // coordinate on y axis of plane
z1 = 0 // coordinate on z axis of plane
d = 2.82 // the space between successive plane in angstrom
theta = 8.8 // glancing angle in degree
// Sample Problem 13 on page no. 13.29
printf("\n # PROBLEM 13 # \n")
printf(" Standard formula used \n")
printf(" n*lambda = 2 * d * sin(theta) \n")
n = 1
lambda = 2 * d * sind(theta) / n
printf("\n Wavelength of x-ray is %f angstrom.",lambda)
                                                               
