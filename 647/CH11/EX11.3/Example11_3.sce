clear;
clc;

// Example: 11.3
// Page: 458

printf("Example: 11.3 - Page: 458\n\n");

// Solution

//*****Data******//
T_melting = 40;// [OC]
Tf = T_melting + 273;// [K]
a = 0.172;// [g]
b = 12.54;// [g]
T_new = 39.25;// [OC]
M2 = 135;// [Molecular wt. of acetanilide, g/mol]
R = 2;// [cal/mol K]
//**************//

delta_T = T_melting - T_new;// [OC]
Kf = delta_T*b*M2/(1000*a);
Lv = ((R*Tf^2/(1000)))/Kf;// [cal/g]
printf("Latent Heat of Fusion of phenol is %.2f cal/g\n",Lv);