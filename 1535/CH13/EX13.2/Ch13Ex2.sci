// Scilab Code Ex13.2: Parallel plate capacitor: Page-287 (2010)
epsilon_0 = 8.854e-012;    // Absolute electrical permittivity of free space, farad per metre
A = 100e-004;    // Area of a plate of parallel plate capacitor, metre square
d = 1e-002;    // Distance between the plates of the capacitor, m
V = 100;    // Potential applied to the plates of the capacitor, volt
C = epsilon_0*A/d;    // Capacitance of parallel plate capacitor, farad
Q = C/V;    // Charge on the plates of the capacitor, coulomb
printf("\nThe capacitance of parallel plate capacitor = %5.3e F", C);
printf("\nThe charge on the plates of the capacitor = %5.3e C", Q);

// Result
// The capacitance of parallel plate capacitor = 8.854e-012 F
// The charge on the plates of the capacitor = 8.854e-014 C