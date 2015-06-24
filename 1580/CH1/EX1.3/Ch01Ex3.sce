// Scilab Code Ex1.3 : Bond energy of NaCl molecule  Page-1.9 (2004)
clc;clear;
A = 5.14;    // Ionization energy of Na, eV
B = 3.65;    // Electron affinity of Cl, eV
r0 = 236e-12;  // Inter ionic equilibrium distance, m
e = 1.6e-19;    // Electronic charge, C
E_o = 8.85e-12; //Permittivity of free space, C/N^2-m^2
Ue = -e/(4*%pi*E_o*r0);    // Potential energy to produce the ion pair, eV
BE = -Ue-A+B
printf("\nThe potential energy Ue = %2.1f eV",Ue);
printf("\nThe Binding energy BE = %4.2f eV",BE);

// Result 
//  The potential energy Ue = -6.1 eV
//  The Binding energy BE = 4.61 eV 
