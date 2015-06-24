// Scilab code Exa15.1 : : Page-652 (2011)
clc; clear;
N_0_235 = 1;        // Number of uranium atom
N_0_c = 10^5;        // Number of graphite atoms per uranium atom
sigma_a_235 = 698;    // Absorption cross section for uranium, barns
sigma_a_c = 0.003;        // Absorption cross section for graphite, barns
f = N_0_235*sigma_a_235/(N_0_235*sigma_a_235+N_0_c*sigma_a_c );    // Thermal utilization factor
eta = 2.08;        // Number of fast fission neutron produced
k_inf = eta*f;        // Multiplication factor
L_m = 0.54;            // Material length, metre
L_sqr = ((L_m)^2*(1-f));   // diffusion length, metre
tau = 0.0364;                // Age of the neutron
B_sqr = 3.27;            // Geometrical buckling
k_eff = round (k_inf*exp(-tau*B_sqr)/(1+L_sqr*B_sqr));   // Effective multiplication factor
N_lf = k_eff/k_inf;    // Non leakage factor
lf = (1-N_lf)*100;        // Leakage factor, percent
printf("\n Total leakage factor = %4.1f percent",lf)

// Result
//  Total leakage factor = 31.3 percent  