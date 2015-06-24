clc 
// Given that
a = 500 // Aperture of telescope in cm
lambda = 5500 // wavelength of light in angstrom
R = 3.8e5 // Distance of moon in km
// Sample Problem 27 on page no. 172 
printf("\n # PROBLEM 27 # \n")
printf(" Standard formula used \n")
printf(" theta = 1.22*lambda/a  \n")
theta = 1.22*lambda*1e-10/(a*1e-2)  // calculation of angle in radians
x = R*1e3*theta // Calculation separation of two points in m
printf("\n Separation of two points is %fm.",x)
