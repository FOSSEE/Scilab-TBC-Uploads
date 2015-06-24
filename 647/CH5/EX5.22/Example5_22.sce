clear;
clc;

// Example: 5.22
// Page: 174

printf("Example: 5.22 - Page: 174\n\n");

// Solution

//*****Data*****//
T1 = 400;// [K]
P1 = 300;// [kPa]
V1 = 1;// [cubic m]
V2 =2;// [cubic m]
R = 8.314;// [kJ/kmol K]
//**************//

// Since the system is well insulated, there is no scope of transferring heat between system & surrounding.
deltaQ = 0;// [kJ]
deltaW = 0;// [kJ]
// By first law of thermodynamics:
deltaU =deltaQ - deltaW;// [kJ]
// As the internal energy of the gas depends only on temperature,
deltaT = 0;// [K]
T2 = T1 + deltaT;// [K]
P2 = (P1*V1/T1)*(T2/V2);// [kPa]
n = P1*V1/(R*T1);// [kmol]
deltaS_system = n*R*log(P1/P2);// [kJ/K]
// Since process is adiabatic:
deltaS_surrounding = 0;// [kJ/K]
deltaS = deltaS_system + deltaS_surrounding;// [kJ/K]
printf("Change in Entropy of the gas is %.4f kJ/K",deltaS);