clear;
clc;

// Example: 4.10
// Page: 129

printf("Example: 4.10 - Page: 129\n\n");

// Solution

//*****Data*****//
T2 = 1273;// [K]
T1 = 300;// [K]
deltaH_300 = -11030;// [cal/mol]
//*************//

// The chemical reaction involved is:
// N2 + 3H2 = 2NH3
// (1/2)N2 + (3/2)H2 = NH3
// deltaH_1273 = deltaH_300 + integrate('Cp_NH3(T) - (1/2)*Cp_N2(T) - (1/2)*Cp_H2(T)','T',1273,300);
deltaH_1273 = deltaH_300 + integrate('(6.2 + 7.8*10^(-3)*T - 7.2*10^(-6)*T^2) - (1/2)*(6.45 + 1.4*10^(-3)*T) - (1/2)*(6.94 - 0.2*10^(-3)*T)','T',1273,300);// [cal]
printf("Heat of formation at 1273 K is %d cal",deltaH_1273);