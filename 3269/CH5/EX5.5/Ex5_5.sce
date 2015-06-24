// Example 5.5
clear all;
clc;

// Given data
phi1 = 6*10^(14);               // Neutron flux of Group 1
phi2 = 1*10^(15);               // Neutron flux of Group 2
phi3 = 3*10^(15);               // Neutron flux of Group 3

// 1.
// Using the data given in Table II.3, for atom density of sodium
N = 0.02541*10^(24);            // Atom density in terms of atom/cm^3
// Using the data given for sigmay (Microscopic radiative capture cross section) in Table II.3,
// 1 barn = 10^(-24) cm^2
sigmay1 = 0.0005*10^(-24);      // Microscopic gamma cross section of Group 1
sigmay2 = 0.001*10^(-24);       // Microscopic gamma cross section of Group 2
sigmay3 = 0.001*10^(-24);       // Microscopic gamma cross section of Group 3
// Calculation 
F_a = N*((sigmay1*phi1)+(sigmay2*phi2)+(sigmay3*phi3));
// Result
printf('\n Total absorption rate for three groups = %3.2E neutrons/cm^3-sec \n',F_a);

// 2.
// Calculation
sigmag_12 = 0.24*10^(-24);        // Microscopic scattereing cross section of neutrons from Group 1 to Group 2
F_12 = N*sigmag_12*phi1;
// Result
printf('\n Neutron scattering rate from the first to second group = %3.2E neutrons/cm^3-sec \n',F_12);

