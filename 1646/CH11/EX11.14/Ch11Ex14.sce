// Scilab Code Ex11.14: Page-571 (2011)
clc;clear;
sigma = 5;....// Electrical conductivity, mho per metre 
mu = 12.56e-007;....// Permeability of the medium, weber/A-m
eps_0 = 8.85e-012;....// Electric permittivity of free space, C-square/N-m-square
eps = 70*eps_0;    // Electric permittivity of the medium, C-square/N-m-square
delta = 2/sigma*sqrt(eps/mu); // The skin depth and attenuation constant of sea water
printf("\nThe skin depth of an EM-wave in sea water = %6.4f m", delta);
Beta = 1/delta;    // The attenuation constant of sea water, per metre
printf("\nThe attenuation constant of the sea water = %6.2f m", Beta); 

// Result
// The skin depth of an EM-wave in sea water = 0.0089 m
// The attenuation constant of the sea water = 112.57 m 
