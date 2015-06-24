// Scilab Code Ex3.15: Page:140 (2011) 
clc;clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
k_B = 1.38e-023;    // Boltzmann constant, J/K
f_E = 0.01;....// Probability that a state with energy 0.5 eV above the Fermi energy is occupied by an electron, eV 
delta_E = 0.5;    // Energy difference (E-Ef)of fermi energy, eV
// Since f_E = 1/(exp((E-Ef)/(k_B*T))+1), solvinf for T 
T = delta_E/(log((1-f_E)/f_E)*k_B/e);  // Temperature at which the level above the fermi level is occupied by the electron, K

printf("\nThe temperature at which the level above the fermi level is occupied by the electron = %4d K", ceil(T));

// Result
// The temperature at which the level above the fermi level is occupied by the electron = 1262 K 
