clear;
clc;

// Example: 6.23
// Page: 239

printf("Example: 6.23 - Page: 239\n\n");

// Solution

// *****Data******//
T = 298;// [K]
P = 10*10^5;// [Pa]
Tc = 126.2;// [K]
Pc = 34*10^5;// [bar]
R = 8.314;// [J/mol K]
//****************//

a = 27*R^2*Tc^2/(64*Pc);// [Pa.m^6/square mol]
b = R*Tc/(8*Pc);// [cubic m/mol]
V = 2.425*10^(-3);// [cubic m/mol]
// From Eqn. 6.173:
Sr = R*log(P*(V - b)/(R*T));// [J/mol K]
printf("Residual Entropy is %.4f J/mol K\n",Sr);
// From Eqn. 6.174:
Hr = P*V - R*T - (a/V);// [J/mol]
printf("Residual Enthalpy is %.4f J/mol K\n",Hr);
Ur = -(a/V);// [J/mol]
printf("Residual Internal Energy is %.4f J/mol K\n",Ur);