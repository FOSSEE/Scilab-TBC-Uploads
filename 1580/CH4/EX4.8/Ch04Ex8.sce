// Scilab Code Ex4.8 : Page-4.16 (2004)
clc;clear;
r = 0.123e-9;   // Atomic radius of iron, m
n = 4;       // Second order of diffraction
M = 55.8;   // Molecular weight of crystal
a = 2*r*sqrt(2);  // lattice constant, m
N = 6.023e+26;   // Avogadro number , k / mol
d = n*M/(N*a^3);    // Density of iron, kg /m-cube
printf("\nDensity of iron = %5.4d kg/metrecube ", d);

// Result 
// Density of iron =  8800 kg/metrecube  
