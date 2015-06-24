clear;
clc;

// Example: 10.10
// Page: 412

printf("Example: 10.10 - Page: 412\n\n");

// Solution

//*****Data******//
P = 101.3;// [kPa]
P1sat = 100.59;// [kPa]
P2sat = 99.27;// [kPa]
x1 = 0.532;
//****************//

x2 = 1 - x1;
gama1 = P/P1sat;
gama2 = P/P2sat;
A = log(gama1)*(1 + (x2*log(gama2))/(x1*log(gama1)))^2;
B = log(gama2)*(1 + (x1*log(gama1))/(x2*log(gama2)))^2;

// For solution containing 10 mol percent benzene:
x1 = 0.10;
x2 = 1 - x1;
gama1 = exp(A/(1 + (A*x1/(B*x2))^2));
gama2 = exp(B/(1 + (B*x2/(A*x1))^2));
printf("Activity Coeffecient\n");
printf("gama1 = %.3f\n",gama1);
printf("gama2 = %.3f\n",gama2);