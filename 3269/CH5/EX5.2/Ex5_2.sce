// Example 5.2
clear;
clc;

// Given data
// 1 barn = 10^(-24) cm^2
sigma_s = 4.8*10^(-24)          // Scattering cross section of carbon in cm^2
A_C = 12;                       // Atomic Mass number for carbon-12
E = 1;                          // Energy of carbon-12 atom in eV
// Using the data given in Table II.3, for carbon (graphite) at energy 1 eV
N = 0.08023*10^(24);            // Atom density in terms of atom/cm^3
mu_bar = 2/(3*A_C);             // Average value of the cosine of the angle at which neutrons are scattered in the med/ium
SIGMA_s = N*sigma_s             // Macroscopic scattering cross section of carbon-12
// Calculation
D = 1/(3*SIGMA_s*(1-mu_bar));
// Result
printf('\n Diffusion coefficeint of graphite at 1 eV = %4.3f cm \n',D);