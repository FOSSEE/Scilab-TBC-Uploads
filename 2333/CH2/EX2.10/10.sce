clc 

// Given that
n = 4 // order of bright fringe
x_n = 10 // Separation of 4th bright fringe from center in mm
D = 1// Separation between source and screen in meter
d = 0.2 // Separation between coherent sources in mm

// Sample Problem 10 on page no. 97
printf("\n # PROBLEM 10 # \n")
printf("\n Standard formula used \n x = D*n*lambda/d \n")
lambda = x_n*1e-3*d*1e-3/(n*D) // Calculation of wavelength of sauce in meter
printf("\n Wavelength of sauce is %d Angstrom.",lambda*1e10)

