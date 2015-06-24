// Scilab Code Ex13.6: Page-650 (2011)
clc;clear;
K = 1.000074;....// Dielectric constant of the He
n = 2.69e+025;....// Atomic density of He, atoms/meter-cube
eps_0 = 8.85e-012;....// Electric permability of the free space, C-square/N-meter-square
E = 1;....// Electric field strength, V/m
p = (eps_0*(K-1)*E)/n;    // Dipole moment induced in He, C-m
printf("\nThe dipole moment induced in each He atom = %4.2e C-m ", p);

// Result
// The dipole moment induced in each He atom = 2.43e-041 C-m  
