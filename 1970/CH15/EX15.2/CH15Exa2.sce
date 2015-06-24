// Scilab code Exa15.2 : : Page-652 (2011)
clc; clear;
N_m = 50;        // Number of molecules of heavy water per uranium molecule
N_u = 1;        // Number of uranium molecules 
sigma_a_u = 7.68;        // Absorption cross section for uranium, barns
sigma_s_u = 8.3;        // Scattered cross section for uranium, barns
sigma_a_D = 0.00092;    // Absorption cross section for heavy water, barns
sigma_s_D = 10.6;        // Scattered cross section for uranium, barns 
f = N_u*sigma_a_u/(N_u*sigma_a_u+N_m*sigma_a_D );        // Thermal utilization factor
zeta = 0.570;        // Average number of collisions
N_0 = N_u*139/140;        // Number of U-238 atoms per unit volume 
sigma_s = N_m/N_0*sigma_s_D;    // Scattered cross section, barns
sigma_a_eff = 3.85*(sigma_s/N_0)^0.415;    // Effective absorption cross section, barns
p = exp(-sigma_a_eff/sigma_s);        // Resonance escape probablity
eps = 1;                // Fast fission factor
eta = 1.34;            // Number of fast fission neutron produced
k_inf = eps*eta*p*f;        // Effective multiplication factor
printf("\nNeutron multiplication factor = %4.1f ", k_inf);

// Result
// Neutron multiplication factor =  1.2  