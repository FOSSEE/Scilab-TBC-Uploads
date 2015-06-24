clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 9
// Mass Transfer


// Example 9.5
// Page 359
printf("Example 9.5, Page 359 \n \n");

// Evaporation of water, one dimensional
T_w = 20+273 ; // [K]
D = 0.04 ; // [m]
h = 0.20 ; // [m]
h_w = 0.03 ; // [m]

P = 1.014*10^5; // [Pa]
R = 8314 ; // [J/kg mole K]
P_sat = 0.02339 ; // [bar]
x_a1 = P_sat/1.014 ; // mole fraction at liq-vap interface
x_a2 = 0 ; // mole fraction at open top
c = P/(R*T_w);
// From Table 9.2
Dab = 2.422*10^-5 ; // [m^2/s]

// Substituting above values in eqn 9.4.18
flux = 0.041626*Dab/0.17*log((1-0)/(1-x_a1)); // [kg mole/m^2 s]
rate = flux*18*(%pi/4)*(D^2);

printf("Rate of evaporation of water = %e kg/s",rate);