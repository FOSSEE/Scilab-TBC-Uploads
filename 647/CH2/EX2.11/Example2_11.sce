clear;
clc;

// Example: 2.11
// Page: 53

printf("Example: 2.11 - Page: 53\n\n");

// Solution

//*****Data*****//
n = 2;// [mol]
T1 = 293;// [K]
P1 = 15;//[atm]
P2 = 5;// [atm]
Cp = 8.58;// [cal/degree mol]
//**************//

R = 2;// [cal/degree mol]
Cv = Cp - R;// [cal /degree mol]
gama = Cp/Cv;
R = 0.082;// [L atm/degree K]
// Since the gas is ideal:
V1 = n*R*T1/P1;// [L]
// Under adiabatic conditions:
// (V2/V1) = (P1/P2)^(1/gama)
V2 = V1*(P1/P2)^(1/gama);// [L]
printf("The final volme is %.2f L\n",V2);

// To determine the final temperature:
// (T2/T1) = (V1/V2)^(gama - 1);
T2 = T1*(V1/V2)^(gama - 1);// [K]
printf("The final temperature is %.2f K\n",T2);

// Adiabatic Work done can be calculated as:
W = (P1*V1 - P2*V2)/(gama - 1);
printf("Adiabatic work done is %.2f L-atm\n",W);