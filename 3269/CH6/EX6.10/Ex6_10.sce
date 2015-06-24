// Example 6.10
clear all;
clc;

// Given data
N = 150;                    // Number of zirconium atoms for every uranium atom

// 1.
// Using the data of atom density of zirconium from Table II.3
N_Z = 0.0429;                 // Atom density of zirconium in terms of 10^(24)
sigma_tZ = 6.6;               // Total cross section of zirconium in barns
// Using the data of cross section of uranium-235 from Table II.3
sigma_tU = 690;               // Total cross section of uranium in barns
N_25 = N_Z/N;                 // Atom concentration of uranium-235
// Calculation 
lambda = 1/((sigma_tZ*N_Z)+(sigma_tU*N_25));
// Result
printf(" \n The mean free path of thermal neutrons = %3.1f cm \n",lambda);

// 2.
// Using the data of atom density of water from Table II.3
N_W = 0.0334;                 // Atom density of water in terms of 10^(24)
// As the water and zirconium occupy half of the volume
N_W = 0.5*0.0334;
N_Z = 0.5*0.0429;
// From the Figure 6.6
// Uranium is present in one third of the sandwich or \n one sixth of the entire area 
N_25 = 2.86*10^(-4)/6;
// Using the data from Table 3.2
g_aF = 0.978;             // Non 1/v factor Uranium-235 fuel
// Using the data from Table II.3 for microscopic absorption cross section 
sigma_aU = 681;           // Microscopic absorption cross section of Uranium-235 in barns
sigma_aZ = 0.185;         // Microscopic absorption cross section of Zirconium in barns
sigma_aW = 0.664;         // Microscopic absorption cross section of Water in barns
f = (N_25*g_aF*sigma_aU)/((N_25*g_aF*sigma_aU)+(N_Z*sigma_aZ)+(N_W*sigma_aW));      // Thermal utilization factor
// Using the data form Table 6.3 at temperature = 20 deg 
n_T = 2.065;              // Average number of neutrons produced per neutron absorbed in fission
// Calculation
k_inf = n_T*f;
// Result
printf("\n Infinite multiplication factor = %4.3f \n",k_inf);


