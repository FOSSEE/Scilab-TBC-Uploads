clear;
clc;

// Example: 9.14
// Page: 357

printf("Example: 9.14 - Page: 357\n\n");

// Solution

//*****Data******//
b = 0.0391;// [cubic dm/mol]
P1 = 1000;// [atm]
T = 1000 + 273;// [K]
R = 0.0892;// [L bar/K mol]
deff('[Vreal] = f1(P)','Vreal = R*T/P + b');
deff('[Videal] = f2(P)','Videal = R*T/P');
//**************//

// We know that:
// RTlog(f/P) = integral('Vreal - Videal',P,0,P)
f = P1*exp((1/(R*T))*integrate('f1(P) - f2(P)','P',0,P1));// [atm]
phi = f/P1;
printf("The fugacity of the gas is %d atm \n",f);
printf("The fugacity coeffecient of the gas is %.3f atm",phi);