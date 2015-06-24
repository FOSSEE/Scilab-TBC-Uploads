clc 
// Given that
d = 2.51 // the space between adjacent plane in angstrom
theta = 9 // glancing angle in degree
// Sample Problem 14 on page no. 13.29
printf("\n # PROBLEM 14 # \n")
printf(" Standard formula used \n")
printf(" n*lambda = 2 * d * sin(theta) \n")
n = 1 // for n=1
lambda = 2 * d * sind(theta) / n
n = 2 // for n=2
theta = asind(lambda / d)
printf("\n Wavelength of x-ray is %f angstrom.\n Glancing angle for second order diffraction is %f degree.",lambda,theta)
                                                               
