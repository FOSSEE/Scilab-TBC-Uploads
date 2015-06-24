// Scilab Code Ex4.5a: Page-139 (2006)
clc; clear;
T_F = 24600;   // Fermi temperature of potassium, K
k = 1.38e-023;  // Boltzmann constant, J/mol/K
m = 9.1e-031;   // Mass of an electron, kg
E_F = k*T_F;    // Fermi energy of potassium, eV
v_F = sqrt(2*k*T_F/m);      // Fermi velocity of potassium, m/s
printf("\nThe Fermi velocity of potassium = %5.3e m/s", v_F);

// Result 
// The Fermi velocity of potassium = 8.638e+005 m/s 
