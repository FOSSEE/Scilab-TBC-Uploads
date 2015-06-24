// Scilab Code Ex9.8: Page-322 (2014)
clc; clear;
R = 1;    // For simplicity assume the molar gas constant to be unity, J/mol/K
T = 293;    // Room temperature, K
T_F = 8.16e+004;    // The Fermi temperature for copper
C_V = %pi^2*T/(2*T_F)*R;    // Electronic contribution to the molar heat capacity for copper, J/mol/K
printf("\nThe electronic contribution to the molar heat capacity for copper = %6.4fR", C_V);
T_F = 6.38e+004;    // The Fermi temperature for silver
C_V = %pi^2*T/(2*T_F)*R;    // Electronic contribution to the molar heat capacity for silver, J/mol/K
printf("\nThe electronic contribution to the molar heat capacity for silver = %6.4fR", C_V);

// Result
// The electronic contribution to the molar heat capacity for copper = 0.0177R
// The electronic contribution to the molar heat capacity for silver = 0.0227R 