// Scilab Code Ex13.4:Page-649 (2011) 
clc;clear;
eps = 1.46e-10;....// Electric permittivity, C-square/n-meter-square
eps_0 = 8.85e-12;....// Permittivity in free space, C-squre/N-meter-square
K = (eps/eps_0);
printf("\nThe dielectric constant = %4.1f ", K);
chi_e = eps_0*(K-1);....// Susceptability,in C-square/N-meter-square
printf("\nThe electric susceptability = %4.2e C-square/N-meter square ", chi_e);

// Result
// The dielectric constant = 16.5 
// The electric susceptability = 1.37e-010 C-square/N-meter square  
