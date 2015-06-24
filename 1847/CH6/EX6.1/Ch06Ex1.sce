// Scilab Code Ex6.1:: Page-6.19 (2009)
clc; clear;
T = 300;    // Temperature of pure semiconductor, K
n_i = 2.5e+019; // Intrinsic carrier density, per metre square
e = 1.6e-019;   // Charge on an electron, C
mu_e = 0.39;    // Mobility of electrons, Sq.m/V/s
mu_h = 0.19;    // Mobility of holes, Sq.m/V/s
sigma_i = e*n_i*(mu_e+mu_h);    // Conductivity of intrinsic semiconductor at 300 K, mho/m
rho_i = 1/sigma_i;  // Resistivity of intrinsic semiconductor at 300 K, ohm-m

printf("\nThe resistivity of intrinsic semiconductor at 300 K = %4.2f ohm-m", rho_i);

// Result 
// The resistivity of intrinsic semiconductor at 300 K = 0.43 ohm-m 
