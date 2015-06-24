clear;
clc;

// Example: 7.3
// Page: 262

printf("Example: 7.3 - Page: 262\n\n");

// Solution

//*****Data******//
d1 = 0.3;// [m]
d2 = 0715;//[m]
Q = 40/1000;// [cubic m/s]
Z1 = 8;// [m]
Z2 = 6;// [m]
P1 = 5*10^5;// [Pa]
density = 1000;// [kg/cubic m]
g = 9.81;// [m/square s]
//*************//

// From Fig. 7.3 (Pg: 262)
A1 = (%pi/4)*d1^2;// [square m]
A2 = (%pi/4)*d2^2;// [square m]
U1 = Q/A1;// [m/s]
U2 = Q/A2;// [m/s]
// Applying Bernoulli's equations at sections 1 & 2:
P2 =  ((U1^2/(2*g) + Z1 + P1/(density*g)) - (U2^2/(2*g) + Z2))*(density*g);// [Pa]
printf("Pressure at section 2 is %.2f bar",P2/10^5);