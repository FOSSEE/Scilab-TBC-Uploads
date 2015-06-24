// Scilab code Ex8.3 Page:241 (2006)
clc; clear;
h_bar = 6.58e-016;     // Planck's constant, eV.s
m = 0.511e+06;       // Mass of an electron, eV
e = 1.6e-012;       // Energy equivalent of 1 eV, erg/eV
c = 3.0e+010;       // Speed of light, cm/s
N = 4.7e+022;    // Free electron gas concentration of Lithium, per cubic cm
mu_B = 9.27e-021;    // Bohr magneton, Ampere cm-square
E_F = (h_bar*c)^2/(2*m)*(3*%pi^2*N)^(2/3);    // Fermi energy, eV
chi = 3*N*mu_B^2/(2*E_F*e);    // Magnetic susceptibility of Lithium, cgs units
printf("\nMagnetic susceptibility of Lithium = %2.0e cgs units", chi);

// Result 
// Magnetic susceptibility of Lithium = 8e-007 cgs units 

