clear;
clc;

// Example: 3.11
// Page: 107

printf("Example: 3.11 - Page: 107\n\n");

// Solution

//*****Data*****//
Tc = 513.9;// [K]
Pc = 61.48*10^5;// [Pa]
//************//

Tr = 0.7;
T = Tr*Tc - 273.15;// [OC]
P_sat = 10^(8.112 - (1592.864/(T + 226.184)));// [mm Hg]
P_sat = P_sat*101325/760;// [Pa]
Pr_sat = P_sat/Pc;// [Pa]
omega = -1 - log10(Pr_sat);// [Acentric factor]
printf("Acentric factor is %.4f",omega);