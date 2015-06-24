clear;
clc;

// Example: 2.13
// Page: 58

printf("Example: 2.13 - Page: 58\n\n");

// Solution

//*****Data*****//
m = 5;// [kg]
M = 29;// [kg/mol]
T1 = 37 + 273;// [K]
P1 = 101.33;// [kPa]
T2 = 237 + 273;// [K]
Cp = 29.1;// [J/mol K]
Cv = 20.78;// [J/mol K]
R = 8.314;// [J/K mol]
//*****************//

n = m/M;
// From ideal gas equation:
V1 = n*R*T1/P1;// [cubic m]

// Isochoric Process:
printf("Isochoric Process\n");
// Volume = constant
V2 = V1;// [cubic m]
deltaU = n*Cv*(T2 - T1);// [kJ]
// Since Volume is constant
W = 0;
Q = deltaU + W;// [kJ]
// deltaH = deltaU + P*deltaV
// deltaH = deltaU + n*R*deltaT
deltaH = deltaU + n*R*(T2 - T1);// [kJ]
printf("Change in Internal Energy is %.2f kJ\n",deltaU);
printf("Heat Supplied is %.2f kJ\n",Q);
printf("Work done is %d kJ\n",W);
printf("Change in Enthalpy is %.2f kJ\n",deltaH);
printf("\n");

// Isobaric Process
printf("Isobaric Process\n");
// Since Pressure is constant.
P2 = P1;// [kPa]
deltaH = n*Cp*(T2 - T1);// [kJ]
Qp = deltaH;// [kJ]
// deltaU = deltaH - P*deltaV
// From ideal gas equation:
deltaU = deltaH - n*R*(T2 - T1);// [kJ]
W = Qp - deltaU;// [kJ]
printf("Change in Internal Energy is %.2f kJ\n",deltaU);
printf("Heat Supplied is %.2f kJ\n",Qp);
printf("Work done is %.2f kJ\n",W);
printf("Change in Enthalpy is %.2f kJ\n",deltaH);