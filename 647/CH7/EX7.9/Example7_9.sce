clear;
clc;

// Example: 7.9
// Page: 279

printf("Example: 7.9 - Page: 279\n\n");

// Solution

//*****Data******//
Pin = 1000;// [kPa]
Tin = 600;// [K]
Uin = 50;// [m/s]
gama = 1.4;
M = 17;// [g/mol]
R = 8314;// [kJ/mol K]
MachNumber = 2;
//***************//

// Solution (i)
// Using Eqn. (7.36):
Critical_Ratio = (2/(gama + 1))^(gama/(gama - 1));
printf("Critical Ratio is %.2f\n",Critical_Ratio);

// Solution (ii)
PV_in = R*Tin/M;// [square m]
Uthroat = sqrt(Uin^2 + (2*gama*PV_in/(gama - 1))*(1-(Critical_Ratio)^((gama - 1)/gama)));// [m/s]
Uout = MachNumber*Uthroat;// [m/s]
printf("The discharge velocity is %.2f m/s",Uout);