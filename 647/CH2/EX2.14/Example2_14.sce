clear;
clc;

// Example: 2.14
// Page: 60

printf("Example: 2.14 - Page: 60\n\n");

// Solution

//*****Data*****//
n = 1;// [mol]
T1 = 610;// [K]
P1 = 10^6;// [N/square m]
T2 = 310;// [K]
P2 = 10^5;// [N/square m]
Cv = 20.78;// [J/mol K]
//*************//

R = 8.314;// [J/K mol]

// Step 1: Isothermal Expansion Of Ideal Gas:
printf("Step 1: Isothermal Expansion Of Ideal Gas\n")
T1 = 610;// [K]
P1 = 10^6;// [N/square m]
P2 = 10^5;// [N/square m]
// Work done:
W1 = 2.303*n*R*T1*log10(P1/P2);// [J/mol]
// For isothermal expansion:
delta_E1 = 0;// [J/mol]
// From first law of thermodynamics:
Q1 = delta_E1 + W1;// [J/mol]
printf("delta_E for Step 1 is %d J/mol\n",delta_E1);
printf("Q for step 1 is %.2f J/mol\n",Q1);
printf("W for step 1 is %.2f J/mol\n",W1);
printf("\n");

// Step 2: Adiabatic Expansion of ideal gas:
printf("Step 2: Adiabatic Expansion of ideal gas\n")
Q2 = 0;// [J/mol]
delta_E2 = Cv*(T2 - T1);// [J/mol]
// From first law of thermodynamics:
W2 = Q2 - delta_E2;// [J/mol]
printf("delta_E for Step 2 is %d J/mol\n",delta_E2);
printf("Q for step 2 is %.2f J/mol\n",Q2);
printf("W for step 2 is %.2f J/mol\n",W2);
printf("\n");

// Step 3: Isothermal Compression Of Ideal Gas:
printf("Step 3: Isothermal Compression Of Ideal Gas\n")
T2 = 310;// [K]
P1 = 10^5;// [N/square m]
P2 = 10^6;// [N/square m]
// Work done:
W3 = 2.303*n*R*T2*log10(P1/P2);// [J/mol]
// For isothermal expansion:
delta_E3 = 0;// [J/mol]
// From first law of thermodynamics:
Q3 = delta_E3 + W3;// [J/mol]
printf("delta_E for Step 3 is %d J/mol\n",delta_E3);
printf("Q for step 3 is %.2f J/mol\n",Q3);
printf("W for step 3 is %.2f J/mol\n",W3);
printf("\n");

// Step 4: Adiabatic Compression of ideal gas:
printf("Step 4: Adiabatic Compression of ideal gas\n")
T1 = 310;// [K]
T2 = 610;// [K]
Q4 = 0;// [J/mol]
delta_E4 = Cv*(T2 - T1);// [J/mol]
// From first law of thermodynamics:
W4 = Q4 - delta_E4;// [J/mol]
printf("delta_E for Step 4 is %d J/mol\n",delta_E4);
printf("Q for step 4 is %.2f J/mol\n",Q4);
printf("W for step 4 is %.2f J/mol\n",W4);
printf("\n");

// Net work done for the complete cycle:
W = W1 + W2 + W3 + W4;// [J/mol]
printf("Net Work done for the complete cycle is %.2f J/mol\n",W);

// The efficiency of the cycle is given by:
eta = 1- T1/T2;
printf("The efficiency of the cycle is %.2f\n",eta);