clc 
// Given that
N = 400000 // no. of lines in plane transmission grating per meter
lambda1 = 4e-7 // wavelength of light in first case in meter
lambda2 = 7e-7 // wavelength of light in second case in meter
// Sample Problem 35 on page no. 2.52
printf("\n # PROBLEM 35 # \n")
n1 = 1 / (N * lambda1) // calculation for Observed order in first case
n2 = 1 / (N * lambda2) // calculation for Observed order in second case
printf("Standard formula used \n n = 1 / (N * lambda). \n")
printf("\n Observed order = %d,%d",n1,n2)
