clc 
// Given that
lambda = 5.896e-7 // wavelength of first light in meter
lambda_ = 2.83e-7 // wavelength of second light in meter
V1 = 0.12 // stopping potential for emitted electrons for first light in V
V2 = 2.2 // stopping potential for emitted electrons for second light in V
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C 
// Sample Problem 22 on page no. 14.28
printf("\n # PROBLEM 22 # \n")
printf("Standard formula used \n ")
printf(" E = (h * c) * (1 / lambda1 - 1 / lambda2)  \n")
h = (e * (V2 - V1) / c) / (1 / lambda_ - 1 / lambda)
printf("\n Value of Planck constant is %e J-sec.",h)
                                                               
