clear;
clc;

// Example: 10.11
// Page: 413

printf("Example: 10.11 - Page: 413\n\n");

// Solution

//*****Data******//
P = 760;// [mm of Hg]
P1sat = 995;// [mm of Hg]
P2sat = 885;// [mm of Hg]
x1 = 0.335;
T = 64.6;// [OC]
//****************//

x2 = 1 - x1;
gama1 = P/P1sat;
gama2 = P/P2sat;
A = log(gama1)*(1 + (x2*log(gama2))/(x1*log(gama1)))^2;
B = log(gama2)*(1 + (x1*log(gama1))/(x2*log(gama2)))^2;

// For solution containing 11.1 mol percent acetone:
x1 = 0.111;
x2 = 1 - x1;
gama1 = exp((A*x2^2)/(x2 + (A*x1/(B))^2));
gama2 = exp((B*x1^2)/(x1 + (B*x2/(A))^2));
y1 = 1/(1 + (gama2*x2*P2sat/(gama1*x1*P1sat)));
y2 = 1 - y1;
printf("Equilibrium Composition\n");
printf("Acetone Composition = %.2f %%\n",y1*100);
printf("Chloform composition = %.2f %%\n",y2*100);