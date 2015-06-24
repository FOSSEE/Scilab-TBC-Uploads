clear;
clc;

// Example: 6.19
// Page: 227

printf("Example: 6.19 - Page: 227\n\n");

// Solution

// *****Data******//
a = 3.59;// [square L atm /square mol]
b = 0.043;// [L/mol]
R = 0.082;// [J/mol K]
//***************//

// From Eqn. 6.122:
Ti = 2*a/(R*b);// [K]
printf("Inversion of temperature is %.1f K",Ti);