clc 
// Given that
lambda = 5.89e-7 // wavelength of light in meter
b = 1.2e-6 // slit-width in meter
// Sample Problem 16 on page no. 2.44
printf("\n # PROBLEM 16 # \n")
m = 1 // for first minima
theta = asin((m * lambda) / b) // calculation for half angular width of the central bright maxima in radian
theta_ = theta * (180 / %pi) // calculation for half angular width of the central bright maxima in degree
printf("\n Standard formula used \n theta = asin((m * lambda) / b).\n")
printf("\n Half angular width of the central bright maxima = %f degree ",theta_)
