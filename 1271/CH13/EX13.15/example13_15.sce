clc 
// Given that
lambda = 1.5 // wavelength of x-ray in angstrom
theta = 60 // glancing angle in degree
// Sample Problem 15 on page no. 13.29
printf("\n # PROBLEM 15 # \n")
printf(" Standard formula used \n")
printf(" n*lambda = 2 * d * sin(theta) \n")
n = 1 // for first order
d = ( n * lambda) / (2 * sind(theta))
printf("\n Lattice constant of NaCl is %f angstrom.",d)
                                                               
