// Scilab Code Ex6.6: Page-197 (2006)
clc; clear;
e = 1.6e-019;   // Electronic charge, C
n_i = 2.15e+013;    // Carrier density of Ge at room temperature, per cc
mu_e = 3900;    // Mobility of electron, cm-square/V-s
mu_h = 1900;    // Mobility of hole, cm-square/V-s
sigma_i = e*(mu_e+mu_h)*n_i;    // Intrinsic conductivity of Ge, mho per m
rho_i = 1/sigma_i;  // Intrinsic resistivity of Ge at room temperature, ohm-m
printf("\nThe intrinsic resistivity of Ge at room temperature = %2d ohm-cm", rho_i);


// Result 
// The intrinsic resistivity of Ge at room temperature = 50 ohm-cm 
