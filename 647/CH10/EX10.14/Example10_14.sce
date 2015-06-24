clear;
clc;

// Example: 10.14
// Page: 426

printf("Example: 10.14 - Page: 426\n\n");

// Solution

//*****Data******//
x1 = 0.4;// [mole fraction of ethane in vapour phase]
x2 = 0.6;// [mole fraction of propane in vapour phase]
P = 1.5;// [MPa]
//***************//

// Assume T = 10 OC
T = 10;// [OC]
// From Fig. 10.14 (Pg 426):
K1 = 1.8;
K2 = 0.5;
// From Eqn. 10.83:
y1 = K1*x1;
y2 = K2*x2;
// Since y1 + y2 > 1, so we assume another value of T = 9 OC.
T = 9;// [OC]
// From Fig. 10.14 (Pg 426):
K1 = 1.75;
K2 = 0.5;
// From Eqn. 10.83:
y1 = K1*x1;
y2 = K2*x2;
// Since y1 + y2 = 1. Therefore:
printf("Bubble Temperature is %d OC\n",T);
printf("Composition of the vapour bubble:\n y1 = %.2f\n y2 = %.2f",y1,y2);