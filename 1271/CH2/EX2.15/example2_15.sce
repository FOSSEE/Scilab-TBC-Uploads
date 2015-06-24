clc 
// Given that
lambda = 5.5e-7 // wavelength of light in meter
b = 2.2e-6 // slit-width in meter
// Sample Problem 15 on page no. 2.43
printf("\n # PROBLEM 15 # \n")
m2 = 2 // for second minima
theta2 = asin((m2 * lambda) / b) * (180 / %pi) // calculation for angular position of second minima
m3 = 3 // for third minima
theta3 = asin((m3 * lambda) / b) * (180 / %pi) // calculation for angular position of third minima
printf("\n Standard formula used \n theta = asin((m * lambda) / b) * (180 / pi). \n")
printf("\n Angular position of second and third minima = %f , %f degree respectively ",theta2 ,theta3)
