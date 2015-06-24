clear;
clc;

// Example: 9.11
// Page: 354

printf("Example: 9.11 - Page: 354\n\n");

// Solution

//*****Data******//
x1 = 0.3;// [mole fraction of hydrogen in the mixture]
x2 = 0.25;// [mole fraction of nitrogen in the mixture]
x3 = 0.45;// [mole fraction of oxygen in the mixture]
phi1 = 0.7;// [fugacity coeffecient of oxygen in the mixture]
phi2 = 0.85;// [fugacity coeffecient of nitrogen in the mixture]
phi3 = 0.75;// [fugacity coeffecient of oxygen in the mixture]
P = 60;// [bar]
T = 273 + 150;// [K]
//***********//

phi = exp(x1*log(phi1) + x2*log(phi2) + x3*log(phi3));// [fugacity coeffecient of the mixture]
f = phi*P;// [bar]
printf("Fugacity of the gaseous mixture is %.3f bar",f);