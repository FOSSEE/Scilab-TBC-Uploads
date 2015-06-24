clc 
// Given that
lambda = 5e-7 // wavelength of light in meter
theta = %pi / 6 // half angular width of central maximum in first case in radian
theta_ = %pi / 2 // half angular width of central maximum in second case in radian
// Sample Problem 17 on page no. 2.44
printf("\n # PROBLEM 17 # \n")
m = 1 // for first minima
b1 = (lambda * m) / sin(theta) // calculation for slit width in first case
b2 = (lambda * m) / sin(theta_) // calculation for slit width in second case
printf("\n Standard formula used \n b = (lambda * m) / sin(theta). \n")
printf("\n Slit width in first case = %e meter. \n Slit width in second case = %e meter",b1,b2)
