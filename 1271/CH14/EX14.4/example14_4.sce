clc 
// Given that
lambda = 5e-7 // wavelength of green light in meter
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C 
P = 1 // energy in erg
// Sample Problem 4 on page no. 14.21
printf("\n # PROBLEM 4 # \n")
printf("Standard formula used \n")
printf(" E = h*c/lambda \n")
E = ((h * c) / lambda) * (10^7)
n = P / E
printf("\n Number of photons of green light emitted is %e .",n)
                                                               
