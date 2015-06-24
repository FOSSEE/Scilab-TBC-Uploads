// Scilab Code Ex2.6 : Page-2.25 (2004)
clc;clear;
M = 58.5;  // Molecular weight of Carbon, g per mol
N = 6.023e+23;  //  Avagadro number, per mol
m = M/N;    // Mass of one NaCl molecule, g
n = 2.18/m;   // Number of NaCl molecules per unit volume, molecules per cm cube
n1 = 2*n;   // Since NaCl is a diatomic, number of atoms per unit volume is twice
a = 1/n1^(1/3); // Distance between two adjacent atoms in NaCl, angstrom

printf("\nDistance between two adjacent atoms in NaCl = %4.2f angstrom", a/1e-8);

// Result 
//  Distance between two adjacent atoms in NaCl = 2.81 angstrom 
