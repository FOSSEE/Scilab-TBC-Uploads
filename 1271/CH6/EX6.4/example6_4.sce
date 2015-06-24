clc 
// Given that
v = 5.2e6 // speed of electron in meter/sec
B = 1.3e-4 // magnetic field in tesla
r = 1.76e11 // ratio of charge on electron to the mass of electron in C/kg
E = 3.2e-12 // energy of the electron beam in J
M = 9e-31 // mass of an electron in kg
// Sample Problem 4 on page no. 6.22
printf("\n # PROBLEM 4 # \n")
R = v / (r * B)
v_ = sqrt((2 * E) / M )
printf("\n Standard formula used \n R = v / (r * B). \n v_ = sqrt((2 * E) / M ). \n")
printf("\n Radius of circle traced by the beam = %f cm. \n Speed of beam in second case = %e meter/sec.\n Speed of beam in second case is greater than speed of light so we cannot use above formula.",R*100,v_)
