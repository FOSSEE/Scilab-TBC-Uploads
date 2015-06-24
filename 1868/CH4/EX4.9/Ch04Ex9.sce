// Scilab code Ex4.9: Pg 137 (2005)
clc; clear;
k_B = 8.62e-05;   // Boltzmann constant, eV/K
delta_E = 10.2;    // Average thermal energy, eV
// Since (3/2)*k_B*T = averge thermal energy per atom = 10.2eV, solving for T
T = 10.2/(3/2*k_B);      // Temperature at which H-atoms jump to first excited state, K
printf("\nThe temperature at which H-atoms jump to first excited state  = %5d K", T);
N_ratio = 0.10;     // Number ratio of population of first excited state relative to the ground state
// As N_ratio = exp(-delta_E/(k_B*T)), solving for T
T = -delta_E/(k_B*log(N_ratio));     // Temperature at which H-atoms jump to first excited state, K
printf("\nThe temperature of excitation from Boltzmann distribution = %5d K", T);

// Result
// The temperature at which H-atoms jump to first excited state  = 78886 K
// The temperature of excitation from Boltzmann distribution = 51389 K 
