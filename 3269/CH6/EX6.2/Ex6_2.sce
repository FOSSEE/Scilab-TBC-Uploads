// Example 6.2
clear all;
clc;

// Given data
R = 50;                   // Radius of reactor core in cm
P = 100*10^6;             // Power level of the reactor in watt
SIGMA_f = 0.0047;         // Macroscopic fission cross section in cm^(-1)
E_R = 3.2*10^(-11);       // Energy released per fission in joules/second
// Using the data in Table 6.2 for spherical geometry
OMEGA = 3.29;             // Measure of the variation of flux in the reactor
// Calculation
phi_max = (%pi*P)/(4*E_R*SIGMA_f*R^3);
phi_av = phi_max/OMEGA;
// Result
printf('\n Maximum flux in the spherical reactor = %3.2E neutrons/cm^2-sec \n',phi_max);
printf('\n Average flux in the spherical reactor = %3.2E neutrons/cm^2-sec \n',phi_av);
