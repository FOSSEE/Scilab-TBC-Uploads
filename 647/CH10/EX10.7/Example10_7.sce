clear;
clc;

// Example: 10.7
// Page: 408

printf("Example: 10.7 - Page: 408\n\n");

// Solution

//*****Data******//
Temp = 30;// [OC]
A = 0.625;
//**************//

P1sat = exp(13.71 - 3800/Temp);// [kPa]
P2sat = exp(14.01 - 3800/Temp);// [kPa]
// At azeotropic point:
// P = gama1*P1sat + gama2*P2sat
// gama1/gama2 = P2sat/P1sat
// log(gama1) - log(gama2) = log(P2sat) - log(P1sat)
// Val = log(gama1) - gama2
Val = log(P2sat) - log(P1sat);
// log(gama1) = (A*x2^2)
// log(gama2) = (A*x1^2)
// A(x2^2 - x1^2) = 0.625*(x2^2 - x1^2)..................... (1)
// x1 + x2 = 1............................................. (2)
// On simplifying, we get:
// A*(1 - (2*x1)) = Val
x1 = (1/2)*(1 - Val/A);
x2 = 1 - x1;
printf("Azeotropic Composition\n");
printf("The mole fraction of component 1 is %.3f\n",x1);
printf("The mole fraction of component 2 is %.3f\n",x2);