clc 
// Given that
f = 100 // focal length of lens in cm
y = 0.05 // Separation between second dark bend and center in cm
m = 4 // Order of minima
n = 5 // Order of minima
e = 0.5 // Distance of center of 5th minima from center of maxima in cm
// Sample Problem 6 on page no. 141
printf("\n # PROBLEM 6 # \n")
printf(" Standard formula used \n")
printf(" lambda = e*sin(theta)  \n")
theta = y*1e-2/(f*1e-2) // Calculation of angle in radian
lambda_1 = theta*e*1e-2/m // Calculation of wavelength 1
lambda_2 = lambda_1*m/n // Calculation of wavelength 2
printf("\n Wavelengths are %d and %d angestrom.",lambda_1*1e+10,lambda_2*1e+10)
