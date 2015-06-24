// Scilab Code Ex7.3 : Superconducting energy gap at 0K : Page-152 (2010)
T_c = 0.517;    // Critical temperature for cadmium, K
k = 1.38e-023;    // Boltzmann constant, J/K
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
E_g = 3.5*k*T_c/e;    // Superconducting energy gap at absolute zero, eV
printf("\nThe superconducting energy gap for Cd at absolute zero = %4.2e eV",E_g);

// Result 
// The superconducting energy gap for Cd at absolute zero = 1.56e-004 eV