clc 
// Given that
lambda = 5500 // wavelength of light in angstrom
theta = 30 // Semi angle of cone in degree
// Sample Problem 38 on page no. 138
printf("\n # PROBLEM 38 # \n")
printf(" Standard formula used \n")
printf(" S = 1.22*lambda/(2*sin(theta))  \n")
S = 1.22*lambda*1e-10/(2*sin(theta*%pi/180)) // Calculation of resolving limit of microscope
printf("\n Resolving limit of microscope is %e cm.",S*1e2)

