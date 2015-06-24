clear;
clc;

// Example: 6.24
// Page: 244

printf("Example: 6.24 - Page: 244\n\n");

// Solution

// *****Data******//
B = -4.28*10^(-4);// [cubic m/mol]
P = 15*10^5;// [Pa]
T = 273 + 87;// [K]
R = 8.314;// [J/atm K]
//****************//

// Z = 1 + (B*P/(R*T))
// (Z - 1)/P = B/(R*T)
// From Eqn. 6.192 (b)
// ln(f/P) = integral('(Z - 1)/P','P',0,P) = B*P/(R*T)
f = P*exp(B*P/(R*T));// [Pa]
printf("Fugacity of iso-butane is %.2f atm",f/10^5);