// Scilab Code Ex6.5: Page-197 (2006)
clc; clear;
m = 9.11e-031;  // Electron Rest Mass , kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
k = 1.38e-023;  // Boltzmann constant, J/mol/K
T = 300;        // Room temperature, K
m_e = 1.1*m;    // Mass of electron, kg
m_h = 0.56*m;   // Mass of hole, kg
E_g = 1.1;     // Energy band gap for GaAs, J
E_F = E_g/2+3/4*k*T/e*log(m_h/m_e);   // Position of Fermi level of Si at room temperature, eV
printf("\nThe position of Fermi level of Si at room temperature = %5.3f eV", E_F);
printf("\nThe fermi level in this case is shifted downward from the midpoint (0.55 eV) in the forbiddem gap.");

// Result 
// The position of Fermi level of Si at room temperature = 0.537 eV 
// The fermi level in this case is shifted downward from the midpoint (0.55 eV) in the forbiddem gap.
