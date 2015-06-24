clear;
clc;

// Example: 9.13
// Page: 357

printf("Example: 9.13 - Page: 357\n\n");

// Solution

//*****Data******//
Vl = 90.45*10^(-6);// [molar volume of liquid butadiene, cubic m/mol]
fsat = 4.12;// [bar]
P = 10;// [bar]
Psat = 4.12;// [bar]
T = 313;// [K]
R = 8.314;// [J/mol K]
//************//

fl = fsat*exp(Vl*(P - Psat)*10^5/(R*T));// [bar]
printf("The fugacity of the liquid water is %.4f bar",fl);