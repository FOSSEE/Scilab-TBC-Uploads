// Scilab Code Ex4.6 : Page-4.15 (2004)
clc;clear;
n = 4;       // Second order of diffraction
M = 58.5;   // Molecular weight of crystal
d = 2180;  // Density of crystal, kg per cm cube
N = 6.02e+26;   // Avogadro number , k / mol
a = ((n*M)/(d*N))^(1/3);    // Distance between two adjacent atoms of same kind, nm
b = a/2;    // Distance between two adjacent atoms of different kind, nm
printf("\nDistance between two adjacent atoms of same kind = %5.3f nm ", a/1e-9);
printf("\nDistance between two adjacent atoms of different kind  = %5.3f nm ", b/1e-9);
// Result 

//  Distance between two adjacent atoms of same kind = 0.563 nm 
//  Distance between two adjacent atoms of different kind  = 0.281 nm  
