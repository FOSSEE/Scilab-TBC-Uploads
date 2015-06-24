// Example 6.6
clear all;
clc;

// Given data
rho_F = 0.0145;           // Density of Uranium-235 in the mixture in g/cm^3
rho_M = 1;                // Density of Water in the mixture in g/cm^3
M_M = 18;                 // Molecular weight of water
M_F = 235;                // Molecular weight of Uranium-235

// 1.
// The ratio of number of atoms of Uranium-235 to water per cc is
NF_NM = (rho_F*M_M)/(rho_M*M_F);
// Using the data from Tables 3.2
g_aF = 0.978;             // Non 1/v factor of Uranium-235 fuel
g_aM = 2;                 // Non 1/v factor of Water
// Using the data from Table II.2 for Uranium-235
// 1 barn = 10^(-24) cm^2
sigma_aF = 681*10^(-24);  // Microscopic absorption cross section of Uranium-235 in cm^2
sigma_aM=0.333*10^(-24);  // Microscopic absorption cross section of Hydrogen in cm^2
// Using the data form Table 6.3 at temperature = 20 deg 
n_T = 2.065;              // Average number of neutrons produced per neutron absorbed in fission
phisig_aF = 0.886*g_aF*sigma_aF;    // Average thermal absorption cross-section of fuel 
phisig_aM = 0.886*g_aM*sigma_aM;    // Average thermal absorption cross-sections of moderator
Z = (NF_NM)*(phisig_aF/phisig_aM);  // Parameter Z
f = Z/(Z+1);                        // Thermal utilization factor of the fuel
k_inf = n_T*f;                      // Infinite multiplication factor 

// From Table 5.2 and 5.3
L_TM2 = 8.1;                    // Diffusion area in cm^2
t_T = 27;                       // Neutron age in cm^2
L_T2 = (1-f)*L_TM2;             // Diffusion area of fuel moderator mixture
M_T2 = L_T2+t_T;                // Migration area of fuel moderator mixture
// Buckling can be found as
B2 = (k_inf-1)/M_T2;
printf(" \n Using the buckling formula from Table 6.2 \n B^2 = (2.405/R)^2+(pi/H)^2 \n For minumum critical mass H = 1.82R \n");
// On solving for R in B^2 = 8.763/R^2
R = sqrt(8.763/B2);
H = 1.82*R;
// Result
printf(" \n The dimensions of the cylinder are");
printf(" \n Radius of cylinder = %2.1f cm \t Height of cylinder = %3.1f cm \n",R,H);

// 2.
V = %pi*R^2*H;                      // Reactor volume (in cc) assuming cylindrical geometry
// Calculation 
m_F = rho_F*V;
printf(" \n The critical fuel mass = %2.1f kg \n",m_F/1000);
// There is a slight variation in the values of dimensions of cylinder and critical fuel mass as compared from the textbook. This is due to approximation of values in textbook.
