// Example 6.3
clear all;
clc;

// Given data
N_F = 0.00395*10^(24);                // Atom density of Plutonium-239 fuel in atom/cm^3
N_S = 0.0234*10^(24);                 // Atom density of Sodium-23 in atom/cm^3
// Using the data given in Table 6.1,
// 1 barn = 10^(-24) cm^2
sigmaa_S = 0.0008*10^(-24);           // Microscopic absorption cross section of Sodium in cm^2
sigmaa_F = 2.11*10^(-24);             // Microscopic absorption cross section of Plutonium in cm^2
sigmatr_F = 6.8*10^(-24);             // Microscopic transport cross section of Plutonium
sigmatr_S = 3.3*10^(-24);             // Microscopic transport cross section of Sodium
// The value of average number of neutrons produced for a neutron absorbed n(eta) for Plutonium-239 is 2.61
eta = 2.61;

SIGMAA_S = sigmaa_S*N_S;             // Macroscopic absorption cross section of Sodium in cm^(-1)
SIGMAA_F = sigmaa_F*N_F;            // Macroscopic absorption cross section of Plutonium in cm^(-1)
SIGMAA = SIGMAA_S+SIGMAA_F;         // Total macroscopic absorption cross section in cm^(-1)
SIGMA_tr = (sigmatr_F*N_F)+(sigmatr_S*N_S); // Macroscopic transport cross section 
f = SIGMAA_F/SIGMAA;                // Calculation of Thermal Utilization factor(f)
f = ceil(f);
k_inf = eta*f;                       // Calculation of Infinite Multiplication factor(k_inf)

D = 1/(3*SIGMA_tr);                 // Calculation of Diffusion coefficient
L2 = D/SIGMAA;                      // Diffusion area
d = 2.13*D;                         // Extrapolated distance
R_ctil = %pi*sqrt(L2/(k_inf-1));    // Critical Radius for an extrapolated boundary
// Calculation
R_c = R_ctil-d;
// Result
printf('\n Critical Radius = %2.1f cm \n',R_c);
// The answer given in the textbook is wrong. 
