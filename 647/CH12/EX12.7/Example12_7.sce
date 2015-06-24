clear;
clc;

// Example: 12.7
// Page: 485

printf("Example: 12.7 - Page: 485\n\n");

// Solution

//*****Data******//
// Reaction: CO(g) + H2O(g) = CO2(g) + H2(g)
T1 = 298;// [K]
T2 = 1000;// [K]
P = 1;// [bar]
K1 = 1.1582*10^5;
H_CO = -110.532;// [kJ]
H_H2O = -241.997;// [kJ]
H_CO2 = -393.978;// [kJ]
R = 8.314;// [J/mol.K]
//***************//

H_H2 = 0;// [kJ]
H_rkn = H_CO2 + H_H2 - (H_CO + H_H2O);// [kJ]
H_rkn = H_rkn*1000;// [J]
// From Van't Hoff Equation,
K2 = K1*exp((H_rkn/R)*((1/T1) - (1/T2)));
printf("Equilibrium constant at 1000 K is %.4f",K2);