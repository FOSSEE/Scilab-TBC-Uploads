clc 
// Given that
lambda = 5.89e-7 // wavelength of light in meter
b = 1e-3 // slit-width in meter
// Sample Problem 13 on page no. 2.42
printf("\n # PROBLEM 13 # \n")
m = 1 // for first minima
theta = asin((m * lambda) / b) // calculation for angular spread of the central maxima in radian
theta_ = theta * (180 / %pi) // calculation for angular spread of the central maxima in degree
printf("\n Standard formula used \n theta = asin((m * lambda) / b).\n")
printf("\n Angular spread of the central maxima = %f degree ",2 * theta_)
