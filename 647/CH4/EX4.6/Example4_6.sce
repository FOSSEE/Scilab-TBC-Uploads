clear;
clc;

// Example: 4.6
// Page: 124

printf("Example: 4.6 - Page: 124\n\n");

// Solution

//*****Data*****//
// HC : Heat of Combustion
HC_NH3 = -90.6;// [kcal]
HC_H2 = -68.3;// [kcal]
//*************//

// Heat of combustion of NH3:
// 2NH3 + 3O = N2 + 3H2O ............................ (A)
// Heat of combustion of H2:
// H2 + O = H2O ..................................... (B)
// Multiplying (B) by 3 & substracting from (A), we get:
// 2NH3 = N2 + 3H2 .................................. (C)
// Hf : Heat of Formation
Hf_NH3 = -(2*HC_NH3 - 3*HC_H2)/2;// [kcal]
printf("Standard Heat of formation of NH3 is %.1f kcal",Hf_NH3);