// Scilab Code Ex4.19: Page-134 (2006)
clc; clear;
// We have from Mattheissen rule, rho = rho_0 + alpha*T1
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
k = 1.38e-023;  // Boltzmann constant, J/mol/K
rho_40 = 0.2;   // Resistivity of Ge at 40 degree celsius, ohm-m
E_g = 0.7;  // Bandgap for Ge, eV
T1 = 20+273;    // Second temperature, K
T2 = 40 + 273;  // First temperature, K
rho_20 = rho_40*exp(E_g*e/(2*k)*(1/T1-1/T2));    // Resistivity of Ge at 20 degree celsius, ohm-m
printf("\nThe resistivity of Ge at 20 degree celsius = %3.1f ohm-m", rho_20);

// Result 
// The resistivity of Ge at 20 degree celsius = 0.5 ohm-m 

