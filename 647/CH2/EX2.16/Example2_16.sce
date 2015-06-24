clear;
clc;

// Example: 2.16
// Page: 62

printf("Example: 2.16 - Page: 62\n\n");

// Solution

//*****Data*****//
P1 = 1;// [bar]
T1 = 300;//[K]
V1 = 24.92;// [cubic m/kmol]
P2 = 10;// [bar]
T2 = 300;// [K]
Cp = 29.10;// [kJ/kmol K]
Cv = 20.78;// [kJ/kmol K]
R = 8.314;// [J/mol K]
//**************//

// Basis: 1 kmol of ideal gas:
n = 1;
V2 = P1*V1/P2;// [cubic m]

// First Process:
printf("First Process\n");
// In the first step of the first process, the cooling of ga takes place at constant pressure.
// Here the volume is reduced appreciably and consequently the temperature decreases.
T_prime = T1*V2/V1;// [K]
// Heat Requirement:
Q1 = n*Cp*(T_prime - T1);// [kJ]
deltaH1 = Q1;// [kJ]
deltaU1 = deltaH1 - P1*(V2 - V1);// [kJ]
// In the second step, the gas is heated at constant Volume:
// V = constant
Q2 = n*Cv*(T2 - T_prime);// [kJ]
deltaU2 = Q2;// [kJ]
deltaH2 = n*R*(T2 - T_prime);// [kJ]
deltaU = deltaU1 + deltaU2;// [kJ]
deltaH = deltaH1 + deltaH2;// [kJ]
Q = Q1 + Q2;// [kJ]
printf("Change in Internal Energy is %.2f kJ\n",deltaU);
printf("Change in Enthalpy is %.2f kJ\n",deltaH);
printf("Heat Requirement is %.2f kJ\n",Q);
printf("\n");

// Second Process:
printf("Second Process\n");
// In the first step of the second process, the gas is heated at constant volume.
T_prime = T1*P2/P1;// [K]
// Heat Requirement:
Q1 = n*Cv*(T_prime - T1);// [kJ]
deltaU1 = Q1;// [kJ]
deltaH1 = n*R*(T_prime - T1);// [kJ]
// In the second step, the gas is cooled at constant presure:
// V = constant
Q2 = n*Cp*(T2 - T_prime);// [kJ]
deltaH2 = Q2;// [kJ]
deltaU2 = deltaH2 - P1*(V2 - V1);// [kJ]
deltaU = deltaU1 + deltaU2;// [kJ]
deltaH = deltaH1 + deltaH2;// [kJ]
Q = Q1 + Q2;// [kJ]
printf("Change in Internal Energy is %.2f kJ\n",deltaU);
printf("Change in Enthalpy is %.2f kJ\n",deltaH);
printf("Heat Requirement is %.2f kJ\n",Q);