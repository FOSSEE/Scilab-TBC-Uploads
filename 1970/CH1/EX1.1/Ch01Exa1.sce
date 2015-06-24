// Scilab code Exa1.1 :  : Page 51 (2011)
clc; clear;
Z = 79;       // Atomic number of Gold 
z = 1;        // Atomic number of Hydrogen
e = 1.60218e-019;        // Charge of an electron, coulomb
K = 9e+09;            // Coulomb constant, newton metre square per coulomb square
E = 2*1.60218e-013;        // Energy of the proton, joule
b = Z*z*e^2*K/E;            // Distance of closest approach, metre
printf("\nDistance of closest approach : %7.5e metre", b);

// Result
// Distance of closest approach : 5.69575e-014 meter 
