clc 
// Given that
lambda = 5000 // wavelength of light in angstrom
theta = 1e-3 // Separation between stars in degree
// Sample Problem 35 on page no. 175
printf("\n # PROBLEM 35 # \n")
printf(" Standard formula used \n")
printf(" theta = 1.22*lambda/a  \n")
a = 1.22*lambda*1e-10/(theta*%pi/180) // Calculation of diameter of telescope
printf("\n Diameter of telescope is %f cm.",a*100)

