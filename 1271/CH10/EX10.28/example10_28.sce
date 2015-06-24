clc 
// Given that
s = 2 // energy received by the earth in cal/cm^2.min
e0 = 8.85e-12 // electric permittivity of space
mu0 = 1.2567e-6 // magnetic permittivity of space
c = 3e8 // speed of light in meter/sec
// Sample Problem 28 on page no. 10.47
printf("\n # PROBLEM 28 # \n")
r = sqrt(mu0 / e0)
P = s*4.2/(60*1e-4)
E = sqrt(P*r)
H = E/r
printf("Standard formula used \n P = E*H.\n")
printf(" Magnitude of electric field vector = %f v/m.\n Magnitude of magnetic field vector = %f A/m.",E * sqrt(2),H*sqrt(2))
