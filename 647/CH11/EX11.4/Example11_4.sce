clear;
clc;

// Example: 11.4
// Page: 461

printf("Example: 11.4 - Page: 461\n\n");

// Solution

//*****Data******//
T_boiling = 118.24;// [OC]
Tb = T_boiling + 273;// [K]
a = 0.4344;// [g]
b = 44.16;// [g]
Lv = 121;// [cal/g]
T_new = 118.1;// [OC]
R = 2;// [cal/mol K]
//**************//

delta_Tb = T_boiling - T_new;// [OC]
M2 = (R*Tb^2/(1000*Lv))*(a*1000/(b*delta_Tb));
printf("Molecular weight of anthracene is %d kg/kmol",round(M2));