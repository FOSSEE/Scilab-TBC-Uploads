clear;
clc;

// Example: 5.8
// Page: 164

printf("Example: 5.8 - Page: 164\n\n");

// Solution

//*****Data*****//
V1 = 5;// [L]
V2 = 50;// [L]
n = 5;// [moles]
R = 1.987;// [cal/mol K]
//**************//

// Change in entropy for an isothermal change for an ideal gas:
// deltaS = n*R*log(P1/P2) = n*R*log(V2/V1)
deltaS = n*R*log(V2/V1);// [cal/degree]
printf("Change in Entropy is %.3f eu",deltaS);