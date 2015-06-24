
clc 
// Given that
lambda = 5.5e-7 // wavelength of light in meter
c = 3e+8 // speed of light in m/sec
h = 6.63e-34 // Planck constant in j/sec
e = 1.6e-19 // charge on electron in coulomb 
k = 8.62e-5 // Boltzmann constant in eV/K
T = 300 // temperature in kelvin
// Sample Problem 1 on page no. 4.24
printf("\n # PROBLEM 1 # \n")
delta_E = (h * c) / (lambda * e) // calculation for energy difference 
r = exp(-delta_E / (k * T)) // calculation for ratio of population of upper level to the lower energy level
T_ = (delta_E / (k * 0.693)) // calculation for temperature for the second condition
printf("\n Standard formula used \n delta_E = (h * c) / (lambda * e). \n r = exp(-delta_E / (k * T)). \n T_ = (delta_E / (k * 0.693)). \n")
printf("\n Ratio of population of upper level to the lower energy level = %e. \n Temperature for the second condition = %f K. ",r,T_)
//Answer in the book: 1.3 X 10^-38 and 37800 K
//Answer in the program:1.100524 X 10^-38 and 37836.557301 K"
