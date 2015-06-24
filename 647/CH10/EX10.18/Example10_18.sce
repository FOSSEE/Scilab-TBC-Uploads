clear;
clc;

// Example: 10.18
// Page: 433

printf("Example: 10.18 - Page: 433\n\n");

// Solution

//*****Data******//
// 1: Benzene 2: Toulene
z1 = 0.81;
Temp = 60;// [OC]
P = 70;// [kPa]
// Antonine Constants:
A1 = 14.2321;
B1 = 2773.61;
C1 = 220.13;
A2 = 15.0198;
B2 = 3102.64;
C2 = 220.02;
//******************//

deff('[P1] = f1(T)','P1 = exp(A1 - B1/(T + C1))');
P1sat = f1(Temp);// [kPa]
deff('[P2] = f2(T)','P2 = exp(A2 - B2/(T + C2))');
P2sat = f2(Temp);// [kPa]
// P = x1*P1sat + x2*P2sat;
// x2 = 1 - x1;
deff('[y] = f3(x1)','[y] = P - (x1*P1sat + (1 - x1)*P2sat)');
x1 = fsolve(7,f3);
y1 = x1*P1sat/P;
x2 = 1 - x1;
y2 = 1 - y1;

// Basis: 1 mol of feed stream.
F = 1;// [mol]
// F*zi = L*xi + V*yi = L*xi + (1 - L)*yi
deff('[y] = f4(L)','[y] = F*z1 - (L*x1 + (1 - L)*y1)');
L = fsolve(7,f4);// [mol]
V = 1 - L;// [mol]
printf(" L = %.4f mol\n",L);
printf(" V = %.4f mol\n",V);
printf(" y1 = %.4f\n y2 = %.4f\n",y1,y2);
printf(" x1 = %.4f\n x2 = %.4f\n",x1,x2);