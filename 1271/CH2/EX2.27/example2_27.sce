
clc 
// Given that
lambda2 = 5.461e-7 // wavelength of  light in second case in meter
n1 = 4 // no. of order in first case
n2 = 3 // no. of order in second case 
// Sample Problem 27 on page no. 2.48
printf("\n # PROBLEM 27 # \n")
lambda1 = (n2 * lambda2) / n1 // calculation for Wavelength of light in first case
printf("Standard formula used \n lambda1 = (n2 * lambda2) / n1. \n")
printf("\n Wavelength of light in first case = %d A",ceil(lambda1*1e10))
