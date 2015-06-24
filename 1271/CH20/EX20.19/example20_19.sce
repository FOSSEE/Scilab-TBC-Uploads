clc 
// Given that
Z = 27 // atomic no. of Co
R = 1.097e7 // Rydberg constant in m^-1
c = 3e8 // speed of light in m/sec
h = 6.62e-34 // Planck constant in J sec
// Sample Problem 19 on page no. 20.13
printf("\n # PROBLEM 19 # \n")
printf("Standard formula used \n")
printf(" nu = a*(Z-b)^2 ........Moseley law \n")
f = 3/4 * (R * c) * (Z-1)^2
E = h * f
lambda = c / f
printf("\n Energy is %f keV.\n Wavelength of x-ray is %f Angstrom.",E / 1.6e-16,lambda*1e10)
