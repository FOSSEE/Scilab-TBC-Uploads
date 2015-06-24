clear;
clc;

// Example: 7.2
// Page: 257

printf("Example: 7.2 - Page: 257\n\n");

// Solution

//*****Data******//
d1 = 0.2;// [m]
d2 = 0.15;// [m]
d3 = 0.1;// [m]
U1 = 3;// [m/s]
U2 = 2.5;// [m/s]
//**************//

// From Fig. 7.3 (Pg: 257)
// For pipe I:
A1 = (%pi/4)*d1^2;// [square m]
Q1 = A1*U1;// [cubic m/s]
// For pipe II:
A2 = (%pi/4)*d2^2;// [square m]
Q2 = A2*U2;// [cubic m/s]
// For pipe III:
A3 = (%pi/4)*d3^2;// [square m]
// From continuity Eqn.:
Q3 = Q1 - Q2;// [cubic m/s]
U3 = Q3/A3;// [m/s]
printf("Discharge through the 10 cm pipe is %.4f cubic m/sec\n",Q1);
printf("Average velocity in the 15 cm pipe is %.2f m/s",U3);