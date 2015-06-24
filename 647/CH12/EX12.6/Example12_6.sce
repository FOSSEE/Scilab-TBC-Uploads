clear;
clc;

// Example: 12.6
// Page: 481

printf("Example: 12.6 - Page: 481\n\n");

// Solution

//*****Data******//
// Reaction: CO(g) + H2O(g) = CO2(g) + H2(g)
G_CO = -32.8;// [kcal]
G_H2O = -54.64;// [kcal]
G_CO2 = -94.26;// [kcal]
Temp = 273 + 25;// [K]
R = 1.987;// [cal/mol.K]
//***************//

G_H2 = 0;// [kcal]
G_rkn = G_CO2 + G_H2 - (G_CO + G_H2O);// [kcal]
G_rkn = G_rkn*1000;// [cal]
K = exp(-(G_rkn/(R*Temp)));
printf("Equilibrium Constant is %.3e",K);