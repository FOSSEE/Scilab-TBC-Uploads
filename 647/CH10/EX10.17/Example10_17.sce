clear;
clc;

// Example: 10.17
// Page: 432

printf("Example: 10.17 - Page: 432\n\n");

// Solution

//*****Data******//
// 1: acetone 2: acetonitrile 3: nitromethane
z1 = 0.45;
z2 = 0.35;
z3 = 0.20;
P1sat = 195.75;// [kPa]
P2sat = 97.84;// [kPa]
P3sat = 50.32;// [kPa]
//***************//

// Bubble Point Calculation:
Pbubble = z1*+P1sat + z2*P2sat +z3*P3sat;// [kPa]

// Dew Point Calculation:
Pdew = 1/((z1/P1sat) + (z2/P2sat) + (z3/P3sat));// [kPa]
K1 = P1sat/Pdew;
K2 = P2sat/Pdew;
K3 = P3sat/Pdew;
// Overall Material balance:
// For 1 mol of the feed.
// L + V = 1......................................... (1)
// F*zi = L*xi + V*yi ............................... (2)
// zi = (1 - V)*xi + V*yi ........................... (3)
// Substituting xi = yi/K in eqn. (3)
// yi = zi*Ki/(1 + V*(Ki - 1))
// Since, Sum(yi) = 1.
deff('[y] = f(V)','y = (z1*K1/(1 + V*(K1 - 1))) + (z2*K2/(1 + V*(K2 - 1))) + (z3*K3/(1 + V*(K3 - 1))) - 1');
V = fsolve(0.8,f);
L = 1 - V;
y1 = z1*K1/(1 + V*(K1 - 1));
y2 = z2*K2/(1 + V*(K2 - 1));
y3 = z3*K3/(1 + V*(K3 - 1));
// From Eqn. 10.83:
x1 = y1/K1;
x2 = y2/K2;
x3 = y3/K3;
printf(" L = %e mol\n",L);
printf(" V = %e mol\n",V);
printf(" y1 = %.4f\n y2 = %.4f\n y3 = %.4f\n",y1,y2,y3);
printf(" x1 = %.4f\n x2 = %.4f\n x3 = %.4f\n",x1,x2,x3);