clc 
// Given that
E = 4 // enrgy of recoil electron in KeV
theta = 180 // scattered angle of photon in degree
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C 
m = 9.1e-31 // mass of an electron in kg
// Sample Problem 25 on page no. 14.30
printf("\n # PROBLEM 25 # \n")
printf("Standard formula used \n ")
printf(" 1/2*m*v^2 = h*c*(1/lambda1 - 1/lambda2)\n")
p = sqrt(2 * E * 10^3 * e * m)
lambda = (2 * h * c) / (p * c + E * 10^3 * e)
printf("\n Wavelength of incident beam is %f Angstrom.",lambda * 1e10)
                                                               
