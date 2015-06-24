// Scilab code Exa1.5.2 : Calculation of energy required to break C-12 into 3-alpha particle : Page 37 (2011)
amu = 1.49239e-010; // Atomic mass unit, J
M_C = 12; // Mass of C-12, amu
M_a = 4.0026;    // Mass of alpha particle, amu
M_3a = 3*M_a; // Mass of 3 alpha particle, amu
D = M_C-M_3a; // Difference in two masses, amu
E = D*amu; // Required energy,J
printf("\nThe energy required to break 3 alpha particles : %4.2e J",E)

// Result
// The energy required to break 3 alpha particles : -1.16e-012 J 