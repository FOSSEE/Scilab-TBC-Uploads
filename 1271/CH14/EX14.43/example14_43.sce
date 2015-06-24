clc 
// Given that
lambda = 5e-7 // wavelength in m
c = 3e8 // velocity of light in m/sec
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C 
m = 1.67e-27 // mass of proton in kg
m_ = 9.1e-31 // mass of electron in kg
// Sample Problem 43 on page no. 14.38
printf("\n # PROBLEM 43 # \n")
printf("Standard formula used \n ")
printf(" lambda = h/(2*m*E)^1/2\n")
E1 = h^2 / (2 * m * lambda^2)
E2 = h^2 / (2 * m_ * lambda^2)
disp(E1,'kinetic energy of proton(in J) =')
disp(E2,'kinetic energy of electron(in J) =')
                                                               
