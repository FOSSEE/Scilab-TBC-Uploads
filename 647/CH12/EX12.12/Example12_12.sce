clear;
clc;

// Example: 12.12
// Page: 490

printf("Example: 12.12 - Page: 490\n\n");

// Solution

//*****Data******//
// Reaction: SO2(g) + (1/2)O2 ------> SO3(g)
P = 1;// [bar]
T = 750;// [K]
K = 74;
//************//

// Moles in Feed:
nSO2 = 1;
nO2 = 0.5;
// Let e be the degree of completion at equilibrium.
// Moles at Equilibrium:
// nSO2_eqb = 10 - e;
// nO2_eqb = 8 - 0.5*e;
// nSO3_eqb = e;
// Total no. of moles = 10 - e + 8 - 0.5*e + e = 18 -0.5*e;
// Mole fraction at Equilibrium:
// ySO2_eqb = (10 - e)/(18 - 0.5*e);
// yO2_eqb = (8 - 0.5*e)/(18 - 0.5*e);
// ySO3_eqb = e/(18 - 0.8*e);
// Sum of stoichometric coeffecient:
v = 1 - 1 -0.5;
Ky = K*P^(-v);
deff('[y] = f(e)','y = Ky - (e*(18 - (0.5*e)))/((10 - e)*(8 - 0.5*e))');
e = fsolve(7,f);
printf("Molar Composition of the gases\n");
printf("nSO2 = %.2f\n",(10 - e));
printf("nO2 = %.2f\n",(8 - 0.5*e));
printf("nSO3 = %.2f\n",e);