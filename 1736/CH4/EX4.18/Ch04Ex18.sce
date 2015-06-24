// Scilab Code Ex4.18: Page-134 (2006)
clc; clear;
// We have from Mattheissen rule, rho = rho_0 + alpha*T1
T1 = 300;   // Initial temperature, K
T2 = 1000;  // Final temperature, K
rho = 1e-06;    // Resistivity of the metal, ohm-m
delta_rho = 0.07*rho;      // Increase in resistivity of metal, ohm-m
alpha = delta_rho/(T2-T1);  // A constant, ohm-m/K
rho_0 = rho - alpha*T1;     // Resistivity at room temperature, ohm-m
printf("\nThe resistivity at room temperature = %4.2e ohm-m", rho);

// Result 
// The resistivity at room temperature = 1.00e-006 ohm-m 

