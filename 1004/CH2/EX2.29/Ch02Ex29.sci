// Scilab Code Ex2.29 Energy required to create a vacancy in Cu: Pg:64 (2008)
n = 1;    // Principal quantum number of K shell
Z = 29;    // Atomic number of copper
U = 13.6;    // Ionization potential of hydrogen atom, eV
E1 = Z^2*U/n^2;    // Energy required to create a vacancy in K-shell of copper atom, eV
n = 2;    // Principal quantum number of L shell
E2 = Z^2*U/n^2;    // Energy required to create a vacancy in K-shell of copper atom, eV
printf("\nThe energy required to create a vacancy in K-shell of copper atom = %5.2e eV", E1);
printf("\nThe energy required to create a vacancy in L-shell of copper atom = %5.2e eV", E2);
// Result 
// The energy required to create a vacancy in K-shell of copper atom = 1.14e+004 eV
// The energy required to create a vacancy in L-shell of copper atom = 2.86e+003 eV