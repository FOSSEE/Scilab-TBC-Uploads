clc 
// Given that
p = 1000 // power of lamp in W
d = 2 // distance of a point from lamp in meter
e0 = 8.85e-12 // electric permittivity of space
mu0 = 1.2567e-6 // magnetic permittivity of space
c = 3e8 // speed of light in meter/sec
// Sample Problem 31 on page no. 10.48
printf("\n # PROBLEM 31 # \n")
s = p / (4 * %pi * d^2) //calculation for 
r = sqrt(mu0 / e0) // ratio of E,H
E = sqrt(s * r)//calculation for average value of intensity of electric field of radiation
printf("Standard formula used \n E_/H_=sqrt(mu_/e_),\nP=E*H.\n")
printf(" Average value of the intensity of electric field of radiation = %f v/m.",E)
