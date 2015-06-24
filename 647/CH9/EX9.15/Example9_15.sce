clear;
clc;

// Example: 9.15
// Page: 359

printf("Example: 9.15 - Page: 359\n\n");

// Solution

//*****Data******//
Vl = 73*10^(-6);// [cubic m/mol]
P = 275;// [bar]
Psat = 4.360;// [bar]
T = 110 + 273;// [K]
R = 8.314;// [J/mol K]
//**************//

// Acetone vapour is assumed to behave like ideal gas.
phi = 1;
fsat = Psat;// [bar]
fl = fsat*exp(Vl*(P - Psat)*10^5/(R*T));// [bar]
printf("Fugacity of liquid butadiene at 313 K & 10 bar is %.3f bar",fl); 