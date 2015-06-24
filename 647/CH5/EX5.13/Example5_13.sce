clear;
clc;

// Example: 5.13
// Page: 168

printf("Example: 5.13 - Page: 168\n\n");

// Solution

//*****Data*****//
m = 80;// [mass of Argon, g]
T1 = 300;// [K]
T2 = 500;// [K]
Cv = 0.3122;// [kJ/kg K]
//**************//

Mw = 40;// [Molecular Weight of Argon]
n = m/Mw;// [moles]
deltaS = n*Cv*log(T2/T1);// [kJ/K]
printf("Entropy Change is %.3f kJ/K",deltaS);