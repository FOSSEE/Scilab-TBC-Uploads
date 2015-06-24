// Scilab code Exa15.3 : : Page-652 (2011)
clc; clear;
// For graphite
sigma_a_g = 0.0032;        // Absorption cross section for graphite, barns
sigma_s_g = 4.8;        // Scattered cross section for graphite, barns
zeta = 0.158;        // Average number of collisions
N_m = 50;        // Number of molecules of graphite per uranium molecule
// For uranium
sigma_f = 590;     // Fissioning cross section, barns
sigma_a_u = 698;        // Absorption cross section for U-235, barns
sigma_a_238 = 2.75;        // Absorption cross section for U-238, barns
v = 2.46;            // Number of fast neutrons emitted
N_u = 1            // Number of uranium atoms 
f = N_u*sigma_a_u/(N_u*sigma_a_u+N_m*sigma_a_g );        // Thermal utilization factor
N_0 = N_u*(75/76);        // Number of U-238 atoms per unit volume
sigma_s = N_m*76/75*sigma_s_g/N_u;        // Scattered cross section, barns
sigma_eff = 3.85*(sigma_s/N_0)^0.415;        // Effective cross section, barns
p = exp(-sigma_eff/sigma_s);        // Resonance escape probability, barns
eps = 1;        // Fast fission factor
eta = 1.34;        // Number of fast fission neutron produced
k_inf = eps*eta*p*f;        // Multiplication factor
printf("\nThe required multiplication factor = %3.1f ", k_inf);

// Result
// The required multiplication factor = 1.1  