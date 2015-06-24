clc 
// Given that
d = 1e16 // density in per m^3
E = 2 // thermal energy in eV
e = 1.6e-19 // charge on an electron in C
// Sample Problem 41 on page no. 12.48
printf("\n # PROBLEM 41 # \n")
lambda = sqrt((8.85e-12 * E * e) / (d * e * e))
printf(" Standard formula used \n")
printf(" l_debye = (epsilon_0*K*T/(n*e^2))^1/2  \n f = omega/(2*pi) \n")
omega = sqrt(d * e^2 / (9.1e-31 * 8.85e-12))
f = omega / (2 * %pi)
printf("\n Debye length is %e meter.\n Plasma frequency is %e Hz.",lambda,f)
