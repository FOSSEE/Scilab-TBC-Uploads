clc 
// Given that
lambda = 5.6e-7 // wavelength of light in meter
n = 120 // no. of photons per second
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C 
// Sample Problem 7 on page no. 14.22
printf("\n # PROBLEM 7 # \n")
printf("Standard formula used \n")
printf(" E = h*c/lambda \n")
E = ((h * c) / lambda)
p = E * n
printf("\n Energy received by the eye per second is %e W.",p)
                                                               
