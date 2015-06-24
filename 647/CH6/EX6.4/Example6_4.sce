clear;
clc;

// Example: 6.4
// Page: 206

printf("Example: 6.4 - Page: 206\n\n");

// Solution

// *****Data******//
T1 = -40 + 273;// [K]
T2 = -45 + 273;// [K]
P1 = 51.25;// [kPa]
R = 0.0815;// [kJ/kg K]
Hv = 225.86;// [kJ/kg]
//****************//

// From Eqn. 6.61:
P2 = P1*exp((Hv/R)*((1/T1) - (1/T2)));// [kPa]
printf("Saturation pressure of the refrigerant is %.2f kPa",P2);