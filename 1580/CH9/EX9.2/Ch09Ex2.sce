// Scilab Code Ex9.2:  Page-9.24 (2004)
clc;clear;
Eg = 1.12;    // Bandgap of silicon, eV
me = 0.12*9.1e-031;    // Effective Mass of the electron, kg
e = 1.6e-19; //  Electronic charge, C
mh = 0.28*9.1e-031;    // Effective Mass of the hole, kg
k = 1.38e-23;    // Boltzman constant,  joule per kelvin
T = 300;        //  temperature, K
EF = (Eg/2)+3/4*k*T*(log(2.333))/e; // EF = E(Eg/2)+3/4*k*T*(log(2.333))/e;  Formula

printf("\nThe position of Fermi Level = %4.3f eV", EF);

// Result
// The position of Fermi Level = 0.576 eV 
