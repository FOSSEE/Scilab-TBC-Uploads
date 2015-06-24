// Example 3.4
clear all;
clc;

// Given data
E = 100;                            // Neutron energy in keV
// Using the data given in Table II.3, for E = 100 keV
atom_density = 0.0254*10^(24);      // Atom density of sodium in atoms/cm^3
// 1 barn = 10^(-24) cm^2
sigma = 3.4*10^(-24);               // Microscopic cross section of sodium in cm^2
// Calculation
SIGMA = atom_density*sigma;
lambda = 1/SIGMA;
// Result
printf('\n Macroscopic cross section = %5.4f cm^(-1)\n',SIGMA);
printf('\n Mean Free Path = %3.2f cm\n',lambda);
