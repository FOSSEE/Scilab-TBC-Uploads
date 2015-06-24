clear;
clc;

// Example: 10.15
// Page: 428

printf("Example: 10.15 - Page: 428\n\n");

// Solution

//*****Data******//
y1 = 0.20;// [mole fraction of methane in vapour phase]
y2 = 0.30;// [mole fraction of ethane in vapour phase]
y3 = 0.50;// [mole fraction of propane in vapour phase]
T = 30;// [OC]
//*************//

// Assume P = 2.0 MPa
P = 2.0;// [MPa]
// From Fig. 10.14 (Pg 426):
K1 = 8.5;
K2 = 2.0;
K3 = 0.68;
// From Eqn. 10.83:
x1 = y1/K1;
x2 = y2/K2;
x3 = y3/K3;
// Since x1 + x2 +x3 < 1, so we assume another value of P = 2.15 MPa at 30 OC.
P = 2.15;// [MPa]
// From Fig. 10.14 (Pg 426):
K1 = 8.1;
K2 = 1.82;
K3 = 0.62;
// From Eqn. 10.83:
x1 = y1/K1;
x2 = y2/K2;
x3 = y3/K3;
// Since x1 + x2 +x3 = 1. Therefore:
printf("Dew Pressure is %.2f MPa\n",P);
printf("Composition of the liquid drop:\n x1 = %.4f\n x2 = %.4f\n x3 = %.4f",x1,x2,x3);