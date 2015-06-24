clear;
clc;

// Example: 7.1
// Page: 256

printf("Example: 7.1 - Page: 256\n\n");

// Solution

// *****Data******//
d1 = 0.15;// [inlet dia, m]
d2 = 0.20;// [outlet dia, m]
U1 = 7;// [inlet velocity, m/s]
//****************//

// From Fig. 7.2 (Pg 256)
// At the inlet:
A1 = (%pi/4)*d1^2;// [square m]
// At the outlet:
A2 = (%pi/4)*d2^2;// [square m]
Q = A1*U1;// [cubic m/s]
printf("Flow rate is %.4f m/s\n",Q);
// Using Continuity Eqn.
// density1*U1*A1 = Density2*U2*A2
// For water: Density1 = Density2. Therefore:
U2 = A1*U1/A2;
printf("Velocity of water at the outlet is %.3f m/s",U2);