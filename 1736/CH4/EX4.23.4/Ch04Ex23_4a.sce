// Scilab Code Ex4.4a: Page-139 (2006)
clc; clear;
f_E = 0.1;     // Occupation probability of electron
E_F = 5.5;    // Fermi energy of Cu, eV
k = 1.38e-023;      // Boltzmann constant, J/mol/K
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
dE = 0.05*E_F;        // Exces energy above Fermi level, eV
E = E_F + dE;    // Energy of the level above Fermi level, eV
// We have, f_E = 1/(exp((E-E_F)*e/(k*T))+1), solving for T
T = (E-E_F)*e/k*1/log(1/f_E-1);   // Temperature at which the electron will have energy 0.1 eV above the Fermi energy, K
printf("\nThe temperature at which the electron will have energy %1d percent above the Fermi energy %4d K", dE/E_F*100, T);


// Result 
// The temperature at which the electron will have energy 5 percent above the Fermi energy 1451 K (The answer given in the textbook is wrong) 
