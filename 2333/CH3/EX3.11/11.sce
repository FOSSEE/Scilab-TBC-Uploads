clc 

// Given that
n = 2 // order
N = 5000 // no. of lines per cm
theta = 30 // angle of deviation in degree
// Sample Problem 11 on page no. 155
printf("\n # PROBLEM 11 # \n")
printf(" Standard formula used \n")
printf(" n*lambda= sin(theta)/N  \n")
lambda= sin(theta*%pi/180)/(n*N*1e2)
printf("\n Wavelength of spectral lines is %d angstrom.",ceil(lambda*1e10))
