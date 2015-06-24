// Scilab Code Ex1.2 : Page-1.8 (2004)
clc;clear;
A = 4.1;    // Ionization energy of K, eV
B = 3.6;    // Electron affinity of Cl, eV
C = A - B;    // Net energy to produce the ion pair, eV
E = C;     // Coulomb energy, eV
e = 1.6e-19;    // Electronic charge, C
E_o = 8.85e-12; //Permittivity of free space, C/N^2-m^2
R = e/(4*%pi*E_o*C);   //  R is the separation between K and Cl , nm
printf("\nThe coulomb energy E = %3.1f eV", E);
printf("\nSeparation between K and Cl, R = %4.2f nm", R/1e-09);

// Result 
//  The coulomb energy E = 0.5 eV
// Separation between K and Cl, R = 2.88 nm 
