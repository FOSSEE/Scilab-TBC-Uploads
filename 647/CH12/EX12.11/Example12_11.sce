clear;
clc;

// Example: 12.11
// Page: 489

printf("Example: 12.11 - Page: 489\n\n");

// Solution

//*****Data******//
// Reaction: N2(g) + 3H2(g) --------> 2NH3
nN2_feed = 1;
nH2_feed = 5;
T = 800;// [K]
P = 250;// [bar]
K = 1.106*10^(-5);
//**************//

// Let e be the degree of completion at equilibrium.
// Moles at Equilibrium:
// nN2_eqb = 1 - e;
// nH2_eqb = 5 - 3*e;
// nNH3_eqb = 2*e;
// Total moles at equilibrium = 1 - e + 5 - 3*e + 2*e = 2*(3 - e)
// Mole Fractions at Equilibrium:
// yN2_eqb = (1 - e)/(2*(3 - e));
// yH2_eqb = (5 - 3*e)/(2*(3 - e));
// yNH3_eqb = 2*e/(2*(3 - e));
// Sum of stoichometric coeffecient:
v = 2 - 3 - 1;
Ky = K*P^(-v);
deff('[y] = f(e)','y = Ky - ((2*e/(2*(3 - e)))^2)/(((1-e)/((2*(3 - e))))*((5 - 3*e)/(2*(3 - e)))^3)');
e = fsolve(0.5,f);
printf("Molar Composition of the gases\n");
printf("yN2 = %.4f\n",(1 - e)/(2*(3 - e)));
printf("yH2 = %.4f\n",(5 - 3*e)/(2*(3 - e)));
printf("yNH3 = %.4f\n",(2*e)/(2*(3 - e)));