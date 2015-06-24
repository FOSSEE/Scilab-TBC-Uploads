clc 
// Given that 
delta_lambda = 1e-6 // accuracy in wavelength of its one part
lambda = 1e-10 // wavelength of x-ray in m
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 4 on page no. 15.25
printf("\n # PROBLEM 4 # \n")
printf("Standard formula used \n")
printf(" del_x*del_p = h/(4*pi) \n")
delta_x = lambda / (4 * %pi * delta_lambda)
printf("\n Uncertainty in position is %f micrometer.",delta_x*10^6)
