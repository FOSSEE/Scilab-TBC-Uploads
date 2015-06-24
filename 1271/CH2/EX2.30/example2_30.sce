clc 
// Given that
lambda1 = 5.89e-7 // wavelength of  light in first case in meter
lambda2 = 5.896e-7 // wavelength of  light in second case in meter
n = 2 // no. of order in first case
N = 600000 // no. of lines in grating per meter  
// Sample Problem 30 on page no. 2.50
printf("\n # PROBLEM 30 # \n")
k = 1 / N // in meter
theta1 = asin(n * lambda1 / k) * (180 / %pi) // calculation for angle in first case
theta2 = asin(n * lambda2 / k) * (180 / %pi) // calculation for angle in second case
delta_theta = theta2 - theta1 // calculation for angle of separation
printf("\n Standard formula used \n theta1 = asin(n * lambda1 / k) * (180 / pi). \n ")
printf("\n Angle of separation = %f degree",delta_theta)
