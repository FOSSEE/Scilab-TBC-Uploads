// Scilab Code Ex9.8:  Page-9.28 (2004)
clc;clear;
Eg = 1;    // Bandgap of silicon, eV
e = 1.6e-19; //  Electronic charge, C
k = 1.38e-23;    // Boltzman constant,joule per kelvin
E_F = (0.6-0.5)*e;  // Fermi energy, joules
// E_F =((Ev+Ec)/2)+3/4*k*T1*(log(4));   // Ev & Ec= valance and conduction band energies (formula) 
T = 4*E_F/(3*k*log(4)); //Temperature that shift the fermi level, K

printf("\nTemperature that shift the fermi level = %4.3d K", T);

// Result
// Temperature that shift the fermi level = 1115 K 
