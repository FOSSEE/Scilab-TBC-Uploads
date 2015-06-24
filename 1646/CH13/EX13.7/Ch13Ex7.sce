// Scilab Code Ex13.7: Page-650 (2011) 
clc;clear;
K = 1.000134;....// Dielectric constant of the neon
n = 2.69e+25;....// Atomic density of argon,atoms/meter-cube
eps_0 = 8.85e-12;....// Electric Permability in the free space, C-square/N-meter-square
E = 90e+03;    // External electric field, V/m
p = eps_0*(K-1)*E/n;    // Dipole moment induced in each neon atom, C-m
alpha = p/E;    // Atomic polarizability of neon gas, C-metre-square/V
printf("\nThe induced dipole moment of noen atom = %4.2e C-m", p) ;
printf("\nThe electronic polarizability of neon gas = %3.1e C-m-square/V ", alpha);

// Result
// The induced dipole moment of noen atom = 3.97e-036 C-m
// The electronic polarizability of neon gas = 4.4e-041 C-m-square/V  
