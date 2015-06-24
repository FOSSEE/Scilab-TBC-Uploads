// Example 3.11
clear all;
clc;

// Given data
phi = 5*10^(12);                                // Neutron flux in neutrons/cm^2-sec
T = 600;                                        // Temperature of neutron in degree
// Using the data given in Table II.3, Appendix II for indium
N = 0.0383*10^(24);                             // Atom density in atoms/cm^3
// 1 barn = 10^(-24) cm^2
sigmaa_E0 = 194*10^(-24);                       // Microscopic absorption cross section in cm^2
SIGMA_E0 = N*sigmaa_E0;                         // Macroscopic absorption cross section in cm^(-1)
// From Table 3.2 
ga_600 = 1.15;                                  // Non 1/v factor at 600 degree celsius
// Calculation 
F_a = ga_600*SIGMA_E0*phi;
// Result
printf('\n Absorption rate of neutrons per cc in indium foil = %4.2E neutrons/cm^3-sec \n',F_a);
