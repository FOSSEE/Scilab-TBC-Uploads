clc 
// Given that
Z = 42 // atomic no. of Mo
lambda = 0.71e-10 // wavelength in m
Z_ = 29 // atomic no. of Cu
// Sample Problem 15 on page no. 20.11
printf("\n # PROBLEM 15 # \n")
printf("Standard formula used \n ")
printf(" nu = a*(Z-b)^2 ........Moseley law \n")
lambda_ = (Z-1)^2 * lambda / (Z_-1)^2
printf("\n Wavelength of the corresponding radiation of Cu is %f Angstrom.",lambda_*1e10)
