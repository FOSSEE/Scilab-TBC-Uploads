// Example 6.1
clear all;
clc;

// Given data
M_F = 235;                  // Atomic mass of Uranium-235
M_S = 23;                   // Atomic mass of Sodium-23
rho_F_S = 1;                // Ratio of densities of Uranium fuel to Sodium
// Using the data given in Table 5.2,
sigmaa_S=0.0008;            // Absorption cross section of Sodium
sigmaa_F=1.65;              // Absorption cross section of Uranium

rho_S_F = 100-rho_F_S;
N_S_F = rho_S_F*(M_F/M_S);    // Ratio of atomic densities of Uranium and Sodium
// Using the data in Table 6.1 for Uranium-235
// The value of average number of neutrons produced for a neutron absorbed n(eta) for Uranium-235 is 2.2
eta = 2.2;

// Calculation 
f = 1/(1+(N_S_F*(sigmaa_S/sigmaa_F)));
k_inf = eta*f;
// Result
printf('\n Thermal Utilization factor = %.3f \n',f);
printf('\n Infinite Multiplication factor = %3.2f \n',k_inf);
