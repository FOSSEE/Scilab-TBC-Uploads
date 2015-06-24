clear;
clc;

// Example: 12.18
// Page: 502

printf("Example: 12.18 - Page: 502\n\n");

// Solution

//*****Data******//
T = 875;// [K]
K = 0.514;
P = 1;// [bar]
//*************//

// Reaction: Fe(s) + H2O(g) --------->FeO(s) + H2(g)
// K = a_FeO*a_H2/(a_Fe*a_H2O)
// Since the activities of the solid components Fe & FeO at equilibrium may be taken as unity.
// a_Fe = a_FeO = 1
// Ka = a_H2/a_H2O;
// Feed:
nH2O_feed = 1;
nH2feed = 0;
// Let e be the degree of completion at equilibrium.
// Moles at Equilibrium:
// nH2O_eqb = 1 - e;
// nH2_eqb = e;
// Total moles at equilibrium = 1 - e + e = 1
// Mole Fractions at Equilibrium:
// yH20_eqb = 1 - e;
// yH2_eqb = e;
// Sum of stoichometric coeffecient:
v = 1 - 1;
Ky = K*P^(-v);
// Ky = e/(1 - e)
e = Ky/(Ky + 1);
yH2_eqb = e;
yH2O_eqb = 1 - e;
printf("Equilibrium Composition\n");
printf("yH2 = %.2f\n",yH2_eqb);
printf("y_H2O = %.2f\n",yH2O_eqb);