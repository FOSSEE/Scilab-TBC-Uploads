clc 
// Given that
lambda = 6000 // wavelength of light in angstrom
e = 0.14 // Width of slit in mm
y = 1.6 // Separation between second dark bend and center in cm
d = 2 // Linear distance in mm
// Sample Problem 2 on page no. 137
printf("\n # PROBLEM 2 # \n")
printf(" Standard formula used \n")
printf(" lambda = e*sin(theta)  \n")
theta = asin(y*1e-2/d) // Calculation of angle in radian
lambda = theta*e*1e-3/2 // Calculation of wavelength 
printf("\n Calculation of wavelength %d angstrom.",lambda*1e+10)
