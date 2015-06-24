clear;
clc;

// Example: 2.7
// Page: 45

printf("Example: 2.7 - Page: 45\n\n");

// Solution

//*****Data*****//
n = 1;// [mol]
Temp = 353;// [K]
P = 1;// [atm]
Hv = 380;// [J/g]
Mwt = 78;// [g/mol]
R = 8.314;// [J/K mol]
//*************//

Q = Hv*Mwt;// [J/mol]
// Since Vv >> Vl:
// P*(Vv - Vl) = P*Vv =n*R*Temp
Wexpansion = n*R*Temp;// [J]
// By first law of thermodynamics:
deltaU = Q - Wexpansion;// [J]
deltaH = deltaU + Wexpansion;// [J]

printf("Change in Internal Energy is %.2f J\n",deltaU);
printf("Change in Enthalpy is %d J\n",deltaH);
printf("Amount of Heat supplied is %d J\n",Q);
printf("Work done is %.2f J\n",Wexpansion);