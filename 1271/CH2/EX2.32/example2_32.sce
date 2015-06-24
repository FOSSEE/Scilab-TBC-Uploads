clc 
// Given that
d_theta = 0.01 // angular separation between two wavelengths in radian 
theta = %pi / 6 // angle of diffraction in radian 
lambda = 5e-7 // wavelength of light in meter
// Sample Problem 32 on page no. 2.51
printf("\n # PROBLEM 32 # \n")
d_lambda = (lambda * cos(theta) * d_theta) / sin(theta) // calculation for difference in two waveligth
printf("Standard formula used \n d_lambda = (lambda * cos(theta) * d_theta) / sin(theta). \n\n")
printf("\n Difference in two wavelength = %e meter ",d_lambda)
