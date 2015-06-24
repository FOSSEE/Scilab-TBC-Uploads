// Scilab Code Ex3.4 : Page-3.7 (2010)
clc;clear;
a = 0.27e-9;  // Lattice constant for BCC,  metre 
c = 0.494e-9;  //  Height of the unit cell, metre
M = 65.37;  // Atomic weight of zn, kg
N = 6.02e+26;   // Avogadro number per k mol
m = 6*M/N;  // Mass per unit cell in HCP structure, kg
V = 3*sqrt(3)*a^2*c/2;   // Volume of unit cell in HCP, metre cube
rho = m/V;    // Density of HCP Zn structure, kg per metrecube

printf("\nVolume of HCP Zn structure = %4.3e metrecube", V);
printf("\nDensity of HCP Zn structure = %4.0f kg per metrecube", rho);

// Result 
//  Volume of HCP Zn structure = 9.356e-29 metrecube
//  Density of HCP Zn structure = 6963 kg per metrecube 
