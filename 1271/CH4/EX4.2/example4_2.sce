clc 
// Given that
lambda1 = 6.328e-7 // wavelength of light in first case in meter
lambda2 =2e-7 // wavelength of light in second case in meter
r1 = 2.3e-4 // the radius of internal beam of laser in first case in meter
r2 = 2.4e-3 // the radius of internal beam of laser in second case in meter
// Sample Problem 2 on page no. 4.24
printf("\n # PROBLEM 2 # \n")
theta1 = lambda1 / (%pi * r1) // calculation for beam divergence angle in first case
theta2 = lambda2 / (%pi * r2) // calculation for beam divergence angle in second case
printf("\n Standard formula used \n theta = lambda / (pi * r). \n")
printf("\n Beam divergence angle in first case = %e radian. \n Beam divergence angle in second case = %e radian. ",theta1,theta2)
