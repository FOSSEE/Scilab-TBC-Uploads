clc 
// Given that
lambda = 5.89e-7 // wavelength of light in meter
d = 1 // distance of screen from slit in meter
b = 1e-4 // slit-width in meter
// Sample Problem 18 on page no. 2.44
printf("\n # PROBLEM 18 # \n")
theta = (asin(lambda / b)) * (180 / %pi) // calculation for angular spread
x = (2 * d * lambda) / b// calculation for linear width
printf("\n Standard formula used \n theta = (asin(lambda / b)) * (180 / pi). \n x = (2 * d * lambda) / b. \n")
printf("\n Angular spread = %f degree\n Linear width = %e meter ",theta,x)
