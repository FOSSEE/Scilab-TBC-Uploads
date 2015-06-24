// Scilab code Ex10.1: Pg 340 (2005)
clc; clear;
// Part (a)
E1 = -13.6;    // Energy of ground state, eV
E2 = -3.40;    // Energy of first excited state, eV
E3 = -1.51;   // Energy of second excited state, eV
g1 = 2;   // Degeneracy for ground state
g2 = 8;   // Degeneracy for first excited state
g3 = 18;    // Degeneracy for second excited state
kB = 8.617e-05;   // Boltzmann constant, eV/K
Ta = 300;   // Temperature, K
// As n_2/n_1 = (g_2*A*e^(-E_2/(k_B*T)))/(g_1*A*e^(-E_1/(k_B*T))), on simplifying we get
N21 = (g2/g1)*exp((E1 - E2)/(kB*Ta));    // The population of first excited state w.r.t ground state
printf("\nThe population of first excited state w.r.t. ground state at %3d K = %1d", Ta, N21);

// Part (b)
Tb = 20000;  // Temperature, K
n21 = (g2/g1)*exp((E1 - E2)/(kB*Tb));   // The population of first excited state w.r.t ground state
n31 = (g3/g1)*exp((E1 - E3)/(kB*Tb));    // The population of second excited state w.r.t ground state
printf("\nThe population of first excited state w.r.t. ground state at %4d K = %6.4f", Tb, n21);
printf("\nThe population of second excited state w.r.t ground state at %4d K = %6.4f", Tb, n31);

// Part (c)
E_strength = (g3/g2)*exp((E2 - E3)/(kB*Tb));   // Emission strength
printf("\nEmission strength of spectral lines = %3.2f", E_strength);

// Result
// The population of first excited state w.r.t. ground state at 300 K = 0
// The population of first excited state w.r.t. ground state at 20000 K = 0.0108
// The population of second excited state w.r.t ground state at 20000 K = 0.0081
// Emission strength of spectral lines = 0.75 
