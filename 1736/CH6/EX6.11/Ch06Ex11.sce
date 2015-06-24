// Scilab Code Ex6.11: Page-200 (2006)
clc; clear;
k = 1.38e-023;  // Boltzmann constant, J/mol/K
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
rho_40 = 0.2;   // Resistivity of Ge at 40 degree celsius, ohm-m
T1 = 40+273;    // Temperature at which resistivity of Ge becomes 0.2 ohm-m, K
T2 = 20+273;    // Temperature at which resistivity of Ge is to be calculated, K
E_g = 0.7;  // Band gap of Ge, eV
// As rho = exp(E_g/(2*k*T)), so for rho_20
rho_20 = rho_40*exp(E_g/(2*k/e)*(1/T2-1/T1));  // Resistivity of Ge at 20 degree celsius, ohm-m
printf("\nThe resistivity of Ge at 20 degree celsius = %3.1f ohm-m", rho_20);

// Result 
// The resistivity of Ge at 20 degree celsius = 0.5 ohm-m 
