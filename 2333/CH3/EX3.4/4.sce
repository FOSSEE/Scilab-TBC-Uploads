clc 
// Given that
e = 0.2 // Width of slit in mm
y = 0.5 // Separation between second dark bend and center in cm
d = 2 // Linear distance in mm
// Sample Problem 4 on page no. 140
printf("\n # PROBLEM 4 # \n")
printf(" Standard formula used \n")
printf(" lambda = e*sin(theta)  \n")
theta = y*1e-2/2 // Calculation of angle in radian
lambda = theta*e*1e-3 // Calculation of wavelength 
printf("\n Calculation of wavelength %d angstrom.",lambda*1e+10)
