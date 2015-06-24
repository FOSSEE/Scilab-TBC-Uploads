clear;
clc;

// Example: 5.9
// Page: 164

printf("Example: 5.9 - Page: 164\n\n");

// Solution

//*****Data*****//
n = 8;// [mol]
R = 8.314;// [J/mol K]
T2 = 700;// [K]
T1 = 350;// [K]
Cp = (5/2)*R;// [J/mol K]
//*************//

deltaS = n*Cp*log(T2/T1);// [J/K]
printf("deltaS is %.2f J/K",deltaS);