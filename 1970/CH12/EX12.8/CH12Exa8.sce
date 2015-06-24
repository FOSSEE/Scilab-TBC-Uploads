// Scilab code Exa12.8 : : Page-575(2011)
clc; clear;
N_0 = 6.023e+026;        // Avogadro's number, per mole
rho = 1.62e+03;        // Density, kg per cubic metre
sigma_a = 3.2e-31;        // Absorption cross section, square metre
sigma_s = 4.8e-28;        // Scattered cross section, square metre
A = 12;                // Mass number
lambda_a = A/(N_0*rho*sigma_a);        // Absorption mean free path, metre
lambda_tr = A/(N_0*rho*sigma_s*(1-2/(3*A)));        // Transport mean free path, metre
L = sqrt(lambda_a*lambda_tr/3);        // Diffusion length for thermal neutron
printf("\nThe diffusion length for thermal neutron = %5.3f metre ",L)

// Result
// The diffusion length for thermal neutron = 0.590 metre  
 