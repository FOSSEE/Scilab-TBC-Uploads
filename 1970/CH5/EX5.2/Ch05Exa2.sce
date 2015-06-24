// Scilab code Exa5.2 : : Page 203 (2011)
// We have to make calculation for alpha particle and for  proton
clc; clear;
E_a = 8.766;     // Energy of the alpha particle, mega electron volts
A_Bi = 209;      // Atomic mass of Bi-209, atomic mass unit
A_a = 4;         // Atomic mass of alpha particle, atomic mass unit
A_p = 1;         // Atomic mass of proton, atomic mass unit
e = 1.6e-019;    // Charge of an electron, coulomb
Z = 83;          // Atomic number of bismuth
R_0 = 1.4e-015;  // Distance of closest approach,metre
K = 8.99e+09;    // Coulomb constant
B_H_a = 2*Z*e^2*K/(R_0*1.6e-013*(A_Bi^(1/3)+A_a^(1/3)));    // Barrier height for an alpha particle, mega electron volts
B_H_p = 1*Z*e^2*K/(R_0*1.6e-013*(A_Bi^(1/3)+A_p^(1/3)));    // Barrier height for proton, mega electron volts
printf("\nBarrier height for the alpha particle = %5.2f MeV \nBarrier height for the proton = %5.2f MeV", B_H_a,B_H_p);

// Result
// Barrier height for the alpha particle = 22.67 MeV 
// Barrier height for the proton = 12.30 MeV 