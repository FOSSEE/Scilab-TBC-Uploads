// Scilab code Ex14.1 : Pg:718(2011)
clc;clear;
e = 1.6e-019;   // Charge on an electron, C
mu_h = 0.048;  // Mobility of holes, metre square/volt-s
mu_e = 0.135;  // Mobility of electrons, metre square/volt-s 
// For P-type semiconductor
rho_p = 1e-01;  // Resistivity of P type silicon, omh-m
// As rho_p = 1/(e*N_a*mu_h), solving for N_a
N_a = 1/(e*rho_p*mu_h); // Density of acceptor atoms, per metre cube
// For N-type semiconductor
rho_n = 1e-01;  // Resistivity of N type silicon, omh-m
// As rho_n = 1/(e*N_d*mu_h), solving for N_d
N_d = 1/(e*rho_n*mu_e); // Density of donor atoms, per metre cube
printf("\nDensity of acceptor atoms = %4.2e per metre cube", N_a); 
printf("\nDensity of donor atoms = %4.2e per metre cube", N_d); 

// Result
// Density of acceptor atoms = 1.30e+21 per metre cube
// Density of donor atoms = 4.63e+20 per metre cube 
