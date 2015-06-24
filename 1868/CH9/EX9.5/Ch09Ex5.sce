// Scilab code Ex9.5: Pg 316 (2005)
clc; clear;
n = 1;    // Principal quantum number
Z = 2;    // Atomic number of Helium
E_a = (-13.6*Z^2)/n^2;      // Energy of the electron in state 'a', eV
E_b = (-13.6*Z^2)/n^2;      // Energy of the electron in state 'b', eV
E = E_a + E_b;    // Total electronic energy of Helium, eV
printf("\nTotal electronic energy of Helium = %5.1f eV", E);

// Result
// Total electronic energy of Helium = -108.8 eV
