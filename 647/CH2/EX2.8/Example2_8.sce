clear;
clc;

// Example: 2.8
// Page: 45

printf("Example: 2.8 - Page: 45\n\n");

// Solution

//*****Data*****//
deltaU = 200;// [cal]
Vinit = 10;// [L]
Vfinal = 50;// [L]
deff('[P] = f(V)','P = 10/V');
//**************//

// By definition of enthalpy:
// deltaQ = deltaU + PdV
deltaQ = deltaU + integrate('f(V)','V',Vinit,Vfinal)*24.2;// [cal]
printf("Change in enthalpy is %f cal\n",deltaQ);