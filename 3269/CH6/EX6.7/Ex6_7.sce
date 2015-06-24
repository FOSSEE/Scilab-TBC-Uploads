// Example 6.7
clear all;
clc;

// Given data
R = 300;                   // Radius of the sphere in cm
M_M = 20;                 // Molecular weight of heavy water
M_F = 235;                // Molecular weight of Uranium-235

// 1.
// Using the data from Table 5.2
Dbar_r = 0.84;              // Diffusion coefficient of graphite in cm
Dbar_c = 0.87;              // Diffusion coefficient of heavy water in cm
L_TM2 = 9400;               // Diffusion area of heavy water in cm^2
L_r = 59;                   // Diffusion length of graphite in cm
// Using the data from Table 3.2
g_aF = 0.978;               // Non 1/v factor Uranium-235 fuel
// Using the data from Table II.2 for Uranium-235
// 1 barn = 10^(-24) cm^2
sigma_aF = 681*10^(-24);            // Microscopic absorption cross section of Uranium-235 in cm^2
SIGMA_aM = 9.3*10^(-5)*10^(-24);    // Macroscopic absorption coefficient of Heavy water in cm^(-1)
N = 0.03323;                        // Atomic density of heavy water
// Let BRcot(BR)= y
y = 1-((Dbar_r/Dbar_c)*((R/L_r)+1));
// Considering only the first solution, B*R=2.64
B = 2.64/R;
// Using the data form Table 6.3 at temperature = 20 deg 
n_T = 2.065;                        // Average number of neutrons produced per neutron absorbed in fission
Z = (1+(B^2*L_TM2))/(n_T-1);        // A parameter
sigma_aM = sqrt(4/%pi)*SIGMA_aM/N;  // Microscopic absorption cross section of Heavy water in cm^2
// The ratio of densities of fuel to moderator
rho_FM = Z*(M_F*sigma_aM)/(M_M*g_aF*sigma_aF)
rho_M = 1.1;                        // Density of Heavy water in g/cm^3
// Calculation
rho_F = rho_FM*rho_M;
// Result
printf(" \n The critical concentration = %.4f g/litre \n",rho_F*1000);

// 2.
V = (4/3)*%pi*R^3;                  // Reactor volume (in cc) assuming spherical geometry
// Calculation
m_F = rho_F*V;
// Result
printf(" \n The critical fuel mass = %3.2f kg \n",m_F/1000);

