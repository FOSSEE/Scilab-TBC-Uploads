clc 
// Given that
lambda= 5000 // wavelength of light in angstrom
theta = 90 // for maximum order
X = 2620 // no. of lines per inch
// Sample Problem 13 on page no. 156
printf("\n # PROBLEM 13 # \n")
printf(" Standard formula used \n")
printf(" n*lambda= sin(theta)/N  \n")
N = X/2.54 // no. of lines per cm
n= sin(theta*%pi/180)/(N*lambda*1e-8) // order calculation
printf("\n Number of orders visible is %d.",n)

