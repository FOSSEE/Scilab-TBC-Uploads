clc 
// Given that
lambda1 = 5.4e-7 // wavelength of light for nth order in meter
lambda2 = 4.05e-7 // wavelength of light for (n+1)th order in meter 
theta = %pi / 6 // angle of diffraction in radian 
// Sample Problem 31 on page no. 2.50
printf("\n # PROBLEM 31 # \n")
k = (lambda1 * lambda2) / ((lambda1 - lambda2) * sin(theta)) // calculation for b+d
N = (1 / k) * (0.01) // calculation for no. of lines per cm
printf("\n Standard formula used \n b+d = (lambda1 * lambda2) / ((lambda1 - lambda2) * sin(theta)). \n N = (1 / k) * (0.01). \n")
printf("\n No. of lines per cm = %d ",N)
