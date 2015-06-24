// Scilab code Ex8.2: Pg.318 (2008)
clc; clear;
g_1 = 2;    // Degeneracy of ground state
g_2 = 8;    // Degeneracy of first excited state
E_1 = 0;    // Energy of ground state, eV
E_2 = 10.2;    // Energy of first excited state, eV
k = 8.617e-05;    // Boltzmann constant, eV/K

// Part (a)
T = 300;    // Temperature, K
// Since n_E = A*g_E*exp(-E/kT), substituting for states n_1 & n_2 & getting their ratio, we get
n_2_1 = g_2/g_1*exp(-(E_2-E_1)/(k*T));    // Ratio of number of atoms in first excited state to that of ground state
printf("\nThe ratio of number of atoms in first excited state to that in ground state at temperature %3d K = %1d", T, n_2_1);

// Part (b)
T = 5800;    // Temperature, K
n_2_1 = g_2/g_1*exp(-(E_2-E_1)/(k*T));    // Ratio of atoms
printf("\nThe ratio of number of atoms in first excited state to that in ground state at temperature %4d K = %3.1e", T, n_2_1);

// Result
// The ratio of number of atoms in first excited state to that in ground state at temperature 300 K = 0
// The ratio of number of atoms in first excited state to that in ground state at temperature 5800 K = 5.5e-009 