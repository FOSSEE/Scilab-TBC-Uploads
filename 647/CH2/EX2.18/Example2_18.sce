clear;
clc;

// Example: 2.18
// Page: 65

printf("Example: 2.18 - Page: 65\n\n");

// Solution

//*****Data*****//
P1 = 10*100;// [kPa]
T1 = 250;// [K]
P2 = 1*100;// [kPa]
T2 = 300;// [K]
R = 8.314;// [J/mol K]
Cv = 20.78;// [kJ/kmol K]
Cp = 29.10;// [kJ/kmol K]
//**********//

V1 = R*T1/P1;// [cubic m]
V2 = R*T2/P2;// [cubic m]

// Calculation based on First Process:
// In this constant-volume process, the initial pressure of 10 bar is reduced to a final pressure of 1 bar and consequently the temperature decreases.
T_prime = P2*V1/R;// [K]
deltaU1 = Cv*(T_prime - T1);// [kJ]
deltaH1 = deltaU1 + V1*(P2 -P1);// [kJ]
// Since V = constant
W1 = 0;//[kJ]
// By first law of thermodynamics:
Q = W1 + deltaU1;// [kJ]

// Calculation based on second process:
// In this process, the gas is heated at constant pressure to the final temperature of T2.
deltaH2 = Cp*(T2 - T_prime);// [kJ]
deltaU2 = deltaH2 - P2*(V2 - V1);// [kJ]
Q = deltaH2;// [kJ]
W2 = Q - deltaU2;// [kJ]

deltaU = deltaU1 + deltaU2;// [kJ]
deltaH = deltaH1 + deltaH2;// [kJ]
printf("Change in Inernal Enrgy is %.2f kJ\n",deltaU);
printf("Change in Enthalpy is %.2f kJ\n",deltaH);