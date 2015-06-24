clc 
// Given that
w = 2 // work function of sodium in eV
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C
// Sample Problem 19 on page no. 14.27
printf("\n # PROBLEM 19 # \n")
printf("Standard formula used \n ")
printf(" E = (h * c)/ lambda \n")
lambda = ((h * c) / w) * (1 / e)
printf("\n Threshold wavelength for photo emission is %d Angstrom.",lambda * 1e10)
                                                               
