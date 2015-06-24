clc 
// Given that
v = 120 // voltage at which electron is accelerated in v
n = 1 // order of Bragg reflection 
x1 = 1 // coordinate on x axis of plane
y1 = 1 // coordinate on y axis of plane
z1 = 1 // coordinate on z axis of plane
theta = 22 // angle at which maximum reflection is obtain in degree
n = 1 // order of reflection
// Sample Problem 19 on page no. 13.31
printf("\n # PROBLEM 19 # \n")
printf(" Standard formula used \n")
printf(" n*lambda = 2 * d * sin(theta) \n lambda = h/(2*m*e*V)^1/2 \n")
lambda = 6.62e-34 / sqrt(2 * 9.1e-31 * 1.6e-19 * v)
d = (n * lambda) / (2 * sind(theta))
a = d * sqrt(3) 
printf("\n Lattice parameter is %f angstrom.",a * 10^10)                           
