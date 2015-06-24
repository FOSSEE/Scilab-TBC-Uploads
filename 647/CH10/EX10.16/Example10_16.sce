clear;
clc;

// Example: 10.16
// Page: 429

printf("Example: 10.16 - Page: 429\n\n");

// Solution

// Dew point Pressure
//*****Data******//
y1 = 0.10;// [mole fraction of methane in vapour phase]
y2 = 0.20;// [mole fraction of ethane in vapour phase]
y3 = 0.70;// [mole fraction of propane in vapour phase]
T = 10;// [OC]
//*************//

// Assume P = 690 kPa
P = 690;// [kPa]
// From Fig. 10.14 (Pg 426):
K1 = 20.0;
K2 = 3.25;
K3 = 0.92;
// From Eqn. 10.83:
x1 = y1/K1;
x2 = y2/K2;
x3 = y3/K3;
// Since x1 + x2 +x3 < 1, so we assume another value of P = 10135 kPa at 10 OC.
P = 10135;// [kPa]
// From Fig. 10.14 (Pg 426):
K1 = 13.20;
K2 = 2.25;
K3 = 0.65;
// From Eqn. 10.83:
x1 = y1/K1;
x2 = y2/K2;
x3 = y3/K3;
// Since x1 + x2 +x3 > 1, so we assume another value of P = 870 kPa at 10 OC.
P = 870;// [kPa]
// From Fig. 10.14 (Pg 426):
K1 = 16.0;
K2 = 2.65;
K3 = 0.762;
// From Eqn. 10.83:
x1 = y1/K1;
x2 = y2/K2;
x3 = y3/K3;
// Since x1 + x2 +x3 = 1. Therefore:
printf("Dew Pressure is %d kPa\n",P);
printf("Composition of the liquid drop:\n x1 = %.4f\n x2 = %.4f\n x3 = %.4f\n",x1,x2,x3);
printf("\n");

// Bubble point Pressure
//*****Data******//
x1 = 0.10;// [mole fraction of methane in vapour phase]
x2 = 0.20;// [mole fraction of ethane in vapour phase]
x3 = 0.70;// [mole fraction of propane in vapour phase]
T = 10;// [OC]
//*************//

// Assume P = 2622 kPa
P = 2622;// [kPa]
// From Fig. 10.14 (Pg 426):
K1 = 5.60;
K2 = 1.11;
K3 = 0.335;
// From Eqn. 10.83:
y1 = K1*x1;
y2 = K2*x2;
y3 = K3*x3;
// Since x1 + x2 +x3 > 1, so we assume another value of P = 2760 kPa at 10 OC.
P = 2760;// [kPa]
// From Fig. 10.14 (Pg 426):
K1 = 5.25;
K2 = 1.07;
K3 = 0.32;
// From Eqn. 10.83:
y1 = K1*x1;
y2 = K2*x2;
y3 = K3*x3;
// Since x1 + x2 +x3 < 1, so we assume another value of P = 2656 kPa at 10 OC.
P = 2656;// [kPa]
// From Fig. 10.14 (Pg 426):
K1 = 5.49;
K2 = 1.10;
K3 = 0.33;
// From Eqn. 10.83:
y1 = K1*x1;
y2 = K2*x2;
y3 = K3*x3;
// Since x1 + x2 +x3 = 1. Therefore:
printf("Bubble Pressure is %d kPa\n",P);
printf("Composition of the vapour bubble:\n y1 = %.4f\n y2 = %.4f\n y3 = %.4f",y1,y2,y3);