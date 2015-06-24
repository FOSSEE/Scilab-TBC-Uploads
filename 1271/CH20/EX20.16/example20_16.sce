clc 
// Given that
Z = 79 // atomic no. of element
b = 1 // a constant
a = 2.468e15 // a constant in per sec
c = 3e8 // speed of light in m/sec
// Sample Problem 16 on page no. 20.12
printf("\n # PROBLEM 16 # \n")
printf("Standard formula used \n ")
printf(" nu = a*(Z-b)^2 ........Moseley law \n")
f = a * (Z - b)^2
lambda = c / f
printf("\n Wavelength of x-ray is %f Angstrom.",lambda*1e10)
