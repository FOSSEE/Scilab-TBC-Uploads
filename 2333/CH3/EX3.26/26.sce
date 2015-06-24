clc 
// Given that
theta = 4.88e-6 // Separation between two stars in radian
lambda = 6000 // wavelength of light in angstrom
// Sample Problem 26 on page no. 172
printf("\n # PROBLEM 26 # \n")
printf(" Standard formula used \n")
printf(" theta = 1.22*lambda/a  \n")
a = 1.22*lambda*1e-10/(theta)  // calculation of aperture of objective
printf("\n Aperture of objective is %d cm.",(a*100))
