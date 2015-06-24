// Scilab code Exa15.4 : : Page-653 (2011)
clc; clear;
eta = 2.07;        // Number of fast fission neutron produced
x = 1/(eta-1);     
sigma_a_u = 687;   // Absorption cross section for uranium, barns
sigma_a_g = 0.0045; // Absorption cross section for graphite, barns
N_ratio = x*sigma_a_g/sigma_a_u;    // Ratio of number of uranium atoms to graphite atoms
printf("\nThe ratio of number of uranium atoms to graphite atoms = %4.2e ", N_ratio);

// Result
// The ratio of number of uranium atoms to graphite atoms = 6.12e-006  