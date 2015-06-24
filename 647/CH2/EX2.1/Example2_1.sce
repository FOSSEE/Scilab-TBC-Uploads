clear;
clc;

// Example: 2.1
// Page: 39

printf("Example: 2.1 - Page: 39\n\n");

// Solution

//*****Data*****//
deff('[E] = f1(T)','E = 50 + 25*T + 0.05*T^2');// [J]
deff('[Q] = f2(T)','Q = 4000 + 10*T');// [J]
Ti = 400;// [K]
Tf = 800;// [K]
//*************//

// From the first law of thermodynamics:
// W = Q - delta_E
// W = f2 -f1
W = integrate('(4000 + 10*T) - (50 + (25*T) + (0.05*T^2))','T',Ti,Tf);
printf("The work done during the process is %.2f kJ\n",W/1000);