clc 
// Given that
lambda = 5000 // wavelength of light in angstrom
theta = 30 // angle in degree
d_theta = 0.01 // angular separation in radian
// Sample Problem 22 on page no. 165
printf("\n # PROBLEM 22 # \n")
printf(" Standard formula used \n")
printf(" d_theta /d_lambda = n/(e+d)*cos(theta)  \n")
d_lambda = lambda*cotg(theta*%pi/180)*d_theta
printf("\n Difference in two wavelengths is %f angstrom.",d_lambda)
