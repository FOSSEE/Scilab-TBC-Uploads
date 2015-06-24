// Example 3.5
clear all;
clc;

// Given data
atom_density_U235 = 3.48*10^(-4)*10^(24);  // Atom density of Uranium-235 in atoms/cm^3
atom_density_U238 = 0.0483*10^(24);        // Atom density of Uranium-238 in atoms/cm^3
// 1 barn = 10^(-24) cm^2
sigmaa_U235 = 680.8*10^(-24);              // Absorption cross section of Uranium-235 incm^2
sigmaa_U238 = 2.7*10^(-24);                // Absorption cross section of Uranium-238 incm^2
// Calculation
SIGMAA=(atom_density_U235*sigmaa_U235)+(atom_density_U238*sigmaa_U238);
// Result
printf('\n Macroscopic absorption cross section = %4.3f cm^(-1)\n',SIGMAA);
