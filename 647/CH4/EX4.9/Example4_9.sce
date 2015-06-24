clear;
clc;

// Example: 4.9
// Page: 129

printf("Example: 4.9 - Page: 129\n\n");

// Solution

//*****Data*****//
T1 = 273;// [K]
T2 = 253;// [K]
deltaH_273 = 1440;// [cal/mol]
Cp = 8.7;// [cal/mol]
//**************//

deltaH_253 = deltaH_273 + Cp*(T2 - T1);// [cal/mol]
printf("Laten heat of ice at -20 OC is %d cal/mol\n",deltaH_253);