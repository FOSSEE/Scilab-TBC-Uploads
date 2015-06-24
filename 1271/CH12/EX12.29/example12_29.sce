clc 
// Given that
d = 1.8 // diameter in meter
B = 0.8 // magnetic field in tesla
m = 6.68e-27 // mass of He(4) in kg
e = 1.6e-19 // charge on an electron in Coulomb
// Sample Problem 29on page no. 12.43
printf("\n # PROBLEM 29 # \n")
printf(" Standard formula used \n")
printf(" E = B^2*q^2*r^2/(2*m) \n f = B*q/(2*pi*m) \n")
r = d / 2
E = (B^2 * (2 * e)^2 * r^2) / (2 * m * 1.6e-19 * 10^6) 
f = B * 2 * e / (2 * %pi * m)
N = f / 2
printf("\n Energy  is %f MeV.\n Number of revolution made by particle to obtain above energy is %e per sec",E,N)
