clear;
clc;

// Example: 11.2
// Page: 459

printf("Example: 11.2 - Page: 459\n\n");

// Solution

//*****Data******//
Tf = 5 + 273;// [K]
Lf = 9830;// [J/mol]
R = 8.314;// [J/mol K]
M1 = 78;// [kg/kmol]
//**************//

Kf = R*Tf^2*M1/(1000*Lf);// [kg/kmol]
printf("Molal Freezing point is %.2f kg/kmol\n",Kf);