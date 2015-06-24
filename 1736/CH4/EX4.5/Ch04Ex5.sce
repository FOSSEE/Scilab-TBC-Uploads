// Scilab Code Ex4.5: Page-119 (2006)
clc; clear;
T = 300;    // Room temperature of tungsten, K
k = 1.38e-023;  // Boltzmann constant, J/mol/K
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
E_F = 4.5*e;    // Fermi energy of tungsten, J
E = E_F-0.1*E_F; // 10% energy below Fermi energy, J
f_T = 1/(1+exp((E-E_F)/(k*T)));     // Probability of the electron in tungsten at room temperature at an nergy 10% below the Fermi energy
printf("\nThe probability of the electron at an energy 10 percent below the Fermi energy in tungsten at 300 K = %4.2f", f_T);
E = 2*k*T+E_F; // For energy equal to 2kT + E_F
f_T = 1/(1+exp((E-E_F)/(k*T)));     // Probability of the electron in tungsten at an energy 2kT above the Fermi energy
printf("\nThe probability of the electron at an energy 2kT above the Fermi energy = %6.4f", f_T);

// Result 
// The probability of the electron at an energy 10 percent below the Fermi energy in tungsten at 300 K = 1.00
// The probability of the electron at an energy 2kT above the Fermi energy = 0.1192  

