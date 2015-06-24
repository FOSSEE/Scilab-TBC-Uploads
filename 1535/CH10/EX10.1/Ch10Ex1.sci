// Scilab Code Ex10.1: Page-222 (2010)
k = 1.38e-023;    // Boltzmann constant, J/K
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
g1 = 2;    // The degeneracy of ground state
g2 = 8;    // The degeneracy of excited state
delta_E = 10.2;    // Energy of excited state above the ground state, eV
T = 6000;    // Temperature of the state, K
D_ratio = g2/g1;    // Ratio of degeneracy of states
N_ratio = D_ratio*exp(-delta_E/(k*T/e));    // Ratio of occupancy of the excited to the ground state
printf("\nThe ratio of occupancy of the excited to the ground state at %d K = %4.2e", T, N_ratio);

// Result
// The ratio of occupancy of the excited to the ground state at 6000 K = 1.10e-008 