clc 
// Given that
f = 10e6 // frequency of applied Emf in Hz
r = 0.32 // radius in meter
m = 3.32e-27 // mass of deuteron in kg
e = 1.6e-19 // charge on an electron in Coulomb
// Sample Problem 31 on page no. 12.44
printf("\n # PROBLEM 31 # \n")
printf(" Standard formula used \n")
printf(" q*v*B = m*v^2/r \n f = B*q/(2*pi*m) \n")
B = (2 * %pi * f * m) / e
v = (e * B * r) / m
printf("\n Flux density of the magnetic field is %f T.\n Velocity of the deuterons emerging out of the cyclotron is %e m/sec. ",B, v)
