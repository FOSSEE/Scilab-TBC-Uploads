clear;
clc;

// Example: 2.6
// Page: 44

printf("Example: 2.6 - Page: 44\n\n");

// Solution

//*****Data*****//
m = 1;// [kg]
Temp = 373;// [K]
P = 101325;// [N/square m]
V_Liquid = 1.04*10^(-3);// [cubic m/kg]
V_Vapour = 1.673;// [cubic m/kg]
Q = 2257;// [kJ]
//**************//

// Work done due to expansion:
Wexpansion = P*(V_Vapour - V_Liquid);// [N-m]
deltaU = Q - Wexpansion/1000;// [kJ]
deltaH = deltaU + Wexpansion/1000;// [kJ]

printf("Change in Internal Energy is %.2f kJ\n",deltaU);
printf("Change in enthalpy is %d kJ\n",deltaH);