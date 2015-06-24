clc 
// Given that
n = 1 // order of brag reflection 
d = 3.84e-10 // the space between successive plane in m
theta = 30 // glancing angle in degree
// Sample Problem 18 on page no. 13.30
printf("\n # PROBLEM 18 # \n")
printf(" Standard formula used \n")
printf(" n*lambda = 2 * d * sin(theta) \n lambda = h/(m*v) \n")
lambda = 2 * d * sind(theta) / n
v = 6.62e-34 / (1.67e-27 * lambda)
printf("\n Wavelength of neutron beam is %f angstrom.\n Speed of neutron beam is %e meter/sec.",lambda * 10^10,v)
                                                               
