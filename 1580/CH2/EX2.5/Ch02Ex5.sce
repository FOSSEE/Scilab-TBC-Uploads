// Scilab Code Ex2.5 : Page-2.24 (2004)
clc;clear;
a = 0.356e-9;   // Cube edge of diamond, m
n = 8/a^3;    // Number of atoms per unit volume, per metre cube
M = 12.01;  // Atomic weight of Carbon, g per mol
N = 6.023e+26;  //  Avagadro number, per kmol
m = M/N;    // Mass of one carbon atom, kg
rho = m*n;   // Density of diamond, kg per metre cube
printf("\nDensity of diamond = %4.0f kg per metre cube", round(rho));

// Result 
// Density of diamond = 3536 kg per metre cube 
