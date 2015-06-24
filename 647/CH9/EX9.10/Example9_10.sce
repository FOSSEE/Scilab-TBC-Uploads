clear;
clc;

// Example: 9.10
// Page: 354

printf("Example: 9.10 - Page: 354\n\n");

// Solution

//*****Data******//
x1 = 0.3;// [mole fraction of component 1 in the mixture]
x2 = 0.7;// [mole fraction of component 2 in the mixture]
phi1 = 0.7;// [fugacity coeffecient of component 1 in the mixture]
phi2 = 0.85;// [fugacity coeffecient of component 2 in the mixture]
P = 50;// [bar]
T = 273 + 100;// [K]
//*************//

phi = exp(x1*log(phi1) + x2*log(phi2));// [fugacity coeffecient of the mixture]
f = phi*P;// [bar]
printf("Fugacity of the gaseous mixture is %.3f bar",f);