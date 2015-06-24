// Example 6.8
clear all;
clc;

// Given data
rho_F = 2*10^(-4);            // Concentration of Uranium-235 fuel in g/cm^3
rho_M = 1.6;                  // Concentration of graphite moderator in g/cm^3
M_F = 235;                    // Molecular mass of Uranium-235 fuel
M_M = 12;                     // Molecular mass of Graphite(Carbon) moderator

// 1.
// Using the data from Tables 3.2
g_aF = 0.978;                 // Non 1/v factor Uranium-235 fuel
// Using the data from Table II.2 for Uranium-235 and Carbon
// 1 barn = 10^(-24) cm^2
sigma_aF = 681*10^(-24);      // Microscopic absorption cross section of Uranium-235 in cm^2
sigma_aM = 3.4*10^(-3)*10^(-24); // Microscopic absorption cross section of Graphite in cm^2
Z = (rho_F*M_M*g_aF*sigma_aF)/(rho_M*M_F*sigma_aM);     // Parameter Z
f = Z/(Z+1);                    // Thermal utilization factor of the fuel
// Using the data form Table 6.3 at temperature = 20 deg 
n_T = 2.065;                    // Average number of neutrons produced per neutron absorbed in fission
k_inf = n_T*f;                  // The infinite multiplication factor
// From Table 5.2
L_TM2 = 3500;                   // Diffusion area of Graphite in cm^2
L_r = 59;                       // Diffusion length of graphite in cm
L_T2 = (1-f)*L_TM2;             // Diffusion area of fuel moderator mixture
// Buckling can be found as
B = sqrt((k_inf-1)/L_T2);
// Calculation
R = acot(-1/(B*L_r))/B;
// Result
printf(" \n The critical radius of fuel loaded thermal reactor = %3.2f cm \n",R);

// 2.
// Reactor is bare or reflector is not present
// Calculation
R0 = %pi/B;
// Result
printf(" \n The critical radius of bare thermal reactor = %d cm \n",R0);
// There is a slight variation in the value of critical radius as compared from the textbook. This is due to approximation of the thermal utilization factor value in textbook.
