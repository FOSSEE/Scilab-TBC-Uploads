clear;
clc;

// Example: 12.8
// Page: 485

printf("Example: 12.8 - Page: 485\n\n");

// Solution

//*****Data******//
// Reaction: N2(g) + 3H2(g) = 2NH3(g)
T1 = 298;// [K]
T2 = 700;// [K]
H_NH3 = -46.1;// [kJ]
G_NH3 = -16.747;// [kJ]
R = 8.314;// [J/mol.K]
//**************//

H_N2 = 0;// [kJ]
H_H2 = 0;// [kJ]
G_N2 = 0;// [kJ]
G_H2 = 0;// [kJ]
H_rkn = 2*H_NH3 - (H_N2 + 3*H_H2);// [kJ]
G_rkn = 2*G_NH3 - (G_N2 + 3*G_H2);// [kJ]
H_rkn = H_rkn*1000;// [J]
G_rkn = G_rkn*1000;// [J]
K1 = exp(-(G_rkn/(R*T1)));
K2 = K1*exp((H_rkn/R)*((1/T1) - (1/T2)));
printf("Equilibrium constant at 700 K is %.4e",K2);