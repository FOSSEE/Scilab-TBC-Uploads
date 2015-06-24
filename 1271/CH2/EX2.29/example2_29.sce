clc 
// Given that
lambda1 = 5.048e-7 // wavelength of light in first case in meter
lambda2 = 5.016e-7 // wavelength of light in second case in meter
n = 2 // no. of order in first case
N = 15000 // no. of lines in grating per inch  
// Sample Problem 29 on page no. 2.49
printf("\n # PROBLEM 29 # \n")
k = 2.54 / 1500000 // in meter
theta1 = asin(n * lambda1 / k) * (180 / %pi) // calculation for angle in first case
theta2 = asin(n * lambda2 / k) * (180 / %pi) // calculation for angle in second case
delta_theta = theta1 - theta2 // calculation for angle of separation
printf("\n Standard formula used \n theta = asin(n * lambda / k) * (180 / pi). \n")
printf("\n Angle of separation = %f degree",delta_theta)
