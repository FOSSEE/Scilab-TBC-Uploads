clear;
clc;

// Example: 5.7
// Page: 162

printf("Example: 5.7 - Page: 162\n\n");

// Solution

//*****Data*****//
n = 1;// [mol]
deltaH_fusion = 6500;// [J/mol]
T_Tr = 273;// [transition temperature, K]
P = 1;// [atm]
//************//

// By Eqn. (9.40)
deltaS_fusion = deltaH_fusion/T_Tr;// [J/mol K]
printf("Change in Entropy is %.2f J/mol K",deltaS_fusion);