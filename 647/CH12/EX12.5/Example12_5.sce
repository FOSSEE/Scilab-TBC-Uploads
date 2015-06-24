clear;
clc;

// Example: 12.5
// Page: 481

printf("Example: 12.5 - Page: 481\n\n");

// Solution

//*****Data******//
// Reaction: N2(g) + 3H2(g) = 2NH3(g)
Temp = 298;// [K]
G_NH3 = -16.750;// [kJ/mol]
R = 8.314;// [J/mol K]
//***************//

G_N2 = 0;// [kJ/mol]
G_H2 = 0;// [kJ/mol]
G_rkn = 2*G_NH3 - G_N2 - 3*G_H2;// [kJ/mol]
printf("Standard Gibbs free energy change is %.1f kJ/mol\n",G_rkn);
G_rkn = G_rkn*1000;// [J/mol];
K = exp(-(G_rkn/(R*Temp)));
printf("Equilibrium constant is %.2e",K);