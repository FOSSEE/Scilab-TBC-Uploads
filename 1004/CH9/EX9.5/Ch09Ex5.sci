// Scilab Code Ex9.5 Change in voltage across a G.M. tube: Pg:202 (2008)
e= 1.6e-019;    // Charge on an electron, coulomb
W = 25;    // Ionization potential of gas (Ar/N2), eV
E = 5e+06;    // Energy of incident alpha particles, eV
C = 1e-010;    // Capacity of the system, farad
N = E/W;    // Number of ions produced
delta_V = N*e/C;    // Change in voltage across the G.M. tube, volt
printf("\nThe change in voltage across the G.M. tube = %3.1e volt", delta_V);
// Result 
// The change in voltage across the G.M. tube = 3.2e-004 volt 