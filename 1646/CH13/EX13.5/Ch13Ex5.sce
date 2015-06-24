// Scilab Code Ex13.5 Page-650 (2011) 
clc;clear;
K = 7.0;....// Dielectric constant of the slab
d = 0.01;....// Distance between the two parallel plates, m
V_0 = 100;....// Potential difference across the plates, V
eps_0 = 8.85e-12;....// Electric permability of the free space, C-square/N-meter-square
E_0 = V_0/d;....// Electric intensity in the absence of dielectric slab, V/m
E = E_0/K;    // Electric intensity with dielectric slab introduced between the plates, V/m
printf("\nThe electric field intensity in the presence of the dielectric slab = %4.2e V/m ", E);
D = (eps_0*K*E);    // Electric displacement, C-square/m-square
printf("\nThe electric displacement in the dielectric slab = %4.2e C-square/meter-square ",D);
P = eps_0*(K-1)*E;    // Electric polarization in the dielectric slab, C-square/m-square
printf("\nThe electric polarization in the dielectric slab = %3.1e C-square/meter-square ",P);

// Result
// The electric field intensity in the presence of the dielectric slab = 1.43e+003 V/m 
// The electric displacement in the dielectric slab = 8.85e-008 C-square/meter-square 
// The electric polarization in the dielectric slab = 7.6e-008 C-square/meter-square  
