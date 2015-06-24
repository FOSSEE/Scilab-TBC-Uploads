clear;
clc;

// Example: 10.6
// Page: 403

printf("Example: 10.6 - Page: 403\n\n");

// Solution

//*****Data******//
deff('[P1] = f1(T)','P1 = exp(16.5915 - 3643.31/(T - 33.424))');
deff('[P2] = f2(T)','P2 = exp(14.2532 - 2665.54/(T - 53.424))');
deff('[A] = f3(T)','A = 2.771 - 0.00523*T');
Temp = 318.15;// [K]
x1 = 0.25;
//**************//

P1sat = f1(Temp);// [kPa]
P2sat = f2(Temp);// [kPa]
A = f3(Temp);
x2 = 1 - x1;
gama1 = exp(A*x2^2);
gama2 = exp(A*x1^2);
P = x1*gama1*P1sat + x2*gama2*P2sat;
y1 = x1*gama1*P1sat/P;
y2 = x2*gama2*P2sat/P;
printf("In Vapour phase\n");
printf("The mole fraction of methanol is %.3f\n",y1);
printf("The mole fraction of methyl acetate is %.3f\n",y2);