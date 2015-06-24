clc 
// Given that
d = 1e12 // electron density in number per m^3
E = 0.1 // thermal energy in eV
e = 1.6e-19 // charge on an electron in C
// Sample Problem 40 on page no. 12.47
printf("\n # PROBLEM 40 # \n")
printf(" Standard formula used \n")
printf(" l_debye = (epsilon_0*K*T/(n*e^2))^1/2  \n f = omega/(2*pi) \n")
lambda = sqrt((8.85e-12 * E * e) / (d * e * e))
omega = sqrt(d * e^2 / (9.1e-31 * 8.85e-12))
f = omega / (2 * %pi)
printf("\n Debye length is %e meter.\n Plasma frequency is %f MHz.",lambda,f / 1e6)
