clear;
clc;

// Example: 5.10
// Page: 164

printf("Example: 5.10 - Page: 164\n\n");

// Solution

//*****Data*****//
n = 5;// [moles]
T1 = 300;// [K]
T2 = 400;// [K]
P1 = 3;// [bars]
P2 = 12;// [bars]
Cp = 26.73;// [J/mol K]
R = 8.314;// [K/mol K]
//*************//

deltaS = n*((Cp*log(T2/T1)) + (R*log(P1/P2)));// [kJ/K]
printf("Change in Entropy is %f kJ/K",deltaS);