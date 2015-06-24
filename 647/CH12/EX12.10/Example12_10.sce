clear;
clc;

// Example: 12.10
// Page: 489

printf("Example: 12.10 - Page: 489\n\n");

// Solution

//*****Data******//
// Reaction: CO(g) + H2O(g) ------> CO2(g) + H2(g)
P = 10;// [bar]
T = 1000;// [K]
K_1000 = 1.5;
//***********//

// Moles in feed:
nCO_feed = 1;
nH20_feed = 1;
// Let e be the degree of completion at equilibrium.
// Moles at Equilibrium:
// nCO_eqb = 1 - e;
// nH20_eqb = 1 - e;
// nCO2_eqb = e;
// nH2_eqb = e;
// Total moles at equilibrium = 1 - e + 1 - e + e + e = 2
// Mole Fractions at Equilibrium:
// yCO_eqb = (1 - e)/2;
// yH20_eqb = (1 - e)/2;
// yCO2_eqb = e/2;
// yH2_eqb = e/2;
// Sum of stoichometric coeffecient:
v = 1 + 1 - 1 - 1;
K = K_1000*P^v;
deff('[y] = f(e)','y = K - (e/2)*(e/2)/(((1 - e)/2)*(1 - e)/2)');
e = fsolve(0.5,f);
printf("Composition of the gas leaving the mixture\n");
printf("yCO = yH20 = %.4f\n",(1 - e)/2);
printf("yCO2 = yH2 = %.4f\n",e/2);