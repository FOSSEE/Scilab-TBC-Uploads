// Scilab Code Ex13.8: Page-651 (2011) 
clc;clear;
K = 1.0024;....// Dielectric constant of the argon
n = 2.7e+25;....// Atomic density of argon,atoms/meter-cube
eps_0 = 8.85e-12;....// Electric Permability in the free space, C-square/N-meter-square
alpha = eps_0*(K-1)/n;
printf("\nThe electronic polarizability of argon atom = %4.1e C-m-square/V ", alpha);

// Result
// The electronic polarizability of argon atom = 7.9e-040 C-m-square/V  
