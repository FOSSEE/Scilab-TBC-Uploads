clear;
clc;

// Example: 3.1
// Page: 88

printf("Example: 3.1 - Page: 88\n\n");

// Solution

//*****Data*****//
P = 2*10^5;// [Pa]
T = 273 + 37;// [K]
R = 8.314;// [J/mol K]
//****************//

// Since the gas behaves ideally:
V = R*T/P;// [cubic metres]
printf("Molar Volume of the gas is %.2e cubic metres",V);