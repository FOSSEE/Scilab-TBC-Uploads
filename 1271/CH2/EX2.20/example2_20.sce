clc 
// Given that
lambda = 6e-7 // wavelength of light in meter
b = 1.2e-6 // slit-width in meter
// Sample Problem 20 on page no. 2.46
printf("\n # PROBLEM 20 # \n")
m = 1 // for first minima
theta = asin((m * lambda) / b) // calculation for angular width of the central maxima in radian
theta_ = theta * (180 / %pi) // calculation for angular width of the central maxima in degree
printf("\n Standard formula used \n theta = asin((m * lambda) / b). \n")
printf("\n Angular width of the central maxima = %f degree ",2 * theta_)
