// Scilab Code Ex13.3: Page-649 (2011)
clc;clear;
chi_e = 35.4e-12;....// Susceptability of the material, C-square/N-meter-square
eps_0 = 8.85e-12;....// Electric permittivity in free space, C-squre/N-meter-square
K = 1 + (chi_e/eps_0);
printf("\nThe dielectric constant = %d ",K);
eps = (eps_0*K); 
printf("\nThe electric permittivity  = %5.3e C-square/N-meter square ",eps);

// Result
// The dielectric constant = 5 
// The electric permittivity  = 4.425e-011 C-square/N-meter square  
 
