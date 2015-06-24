clc 
// Given that
lambda = 1e-10 // wavelength of light in meter
theta = 90 // angle at which scattered radiation is viewed in degree
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C 
m = 9.1e-31 // mass of an electron in kg
// Sample Problem 23 on page no. 14.29
printf("\n # PROBLEM 23 # \n")
printf("Standard formula used \n ")
printf(" delta_lambda = (h / (m * c) * (1 - cos(theta))) \n")
delta_lambda = (h * (1 - cosd(theta))) / (m * c)
printf("\n Compton shift is %f Angstrom",delta_lambda * 1e10)
                                                               
