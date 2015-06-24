// Scilab code Exa15.5 : : Page-653 (2011)
clc; clear; 
f = 0.754;        // Thermal utilization factor
sigma_s_o = 4.2;        // Scattered cross section for oxygen, barns
sigma_s_H = 20;        // Scattered cross section for hydrogen, barns
N_O = 879.25;        // Number of oxygen atoms
N_238 = 14.19;        // Number of uranium atoms
N_H = 1573;            // Number of hydrogen atoms
sigma_s = N_O/N_238*sigma_s_o+N_H/N_238*sigma_s_H;        // Scattered cross section, barns
N_0 = 14.19;        // Number of U-238 per unit volume
zeta_o = 0.120;    // Number of collision for oxygen
zeta_H = 1;        // Number of collision for hydrogen
sigma_eff = (N_0/(zeta_o*sigma_s_o*N_O+zeta_H*sigma_s_H*N_H ));        // Effective cross section, barns
p = exp(-sigma_eff/sigma_s);        // Resonance escape probablity
eta = 2.08;        // Number of fission neutron produced.
eps = 1;        // Fission factor
K_inf = eps*eta*p*f;    // Multiplication factor
printf("\nThe multiplication factor for LOPO reactor = %3.1f ", K_inf);

// Result
// The multiplication factor for LOPO reactor = 1.6  