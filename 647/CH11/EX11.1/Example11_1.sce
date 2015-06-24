clear;
clc;

// Example: 11.1
// Page: 458

printf("Example: 11.1 - Page: 458\n\n");

// Solution

//*****Data******//
a = 2.423;// [g]
b = 100;// [g]
Lf = 35.7;// [cal/g]
Tf = 353.1;// [cal/g]
delta_Tf = 0.64;// [OC]
R = 2;// [cal/mol K]
Mw = 32;// [Molecular wt. of Sulphur, g/mol]
//*************//

M2 =  ((R*Tf^2/(1000*Lf))*(a*1000/(b)))/delta_Tf;// [g/mol]
n = M2/Mw;
printf("Molecular Formula of Sulphur is S%d",round(n));