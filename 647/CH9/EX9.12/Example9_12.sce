clear;
clc;

// Example: 9.12
// Page: 356

printf("Example: 9.12 - Page: 356\n\n");

// Solution

//*****Data******//
T = 372.12;// [K]
Psat = 100;// [kPa]
P = 300; //[kPa]
Vspecific = 1.043*10^(-3);//[cubic m/kg]
M = 18*10^(-3);// [molecular weight of water, kg/mol]
R = 8.314;// [J/mol K]
//***************//

Psat = Psat/100;// [bar]
P = P/100;// [bar]
Vl = Vspecific*M;// [cubic m/mol]
// Vapour is assumed to be like an ideal gas.
phi = 1;
fsat = Psat*phi;// [bar]
fl = fsat*exp(Vl*(P - Psat)*10^5/(R*T));// [bar]
printf("Fugacity of liquid water is %.4f bar",fl);