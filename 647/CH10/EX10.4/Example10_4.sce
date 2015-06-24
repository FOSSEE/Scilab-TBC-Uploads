clear;
clc;

// Example: 10.4
// Page: 400

printf("Example: 10.4 - Page: 400\n\n");

// Solution

//*****Data******//
Temp = 77;// [OC]
P = 75;// [kPa]
deff('[P1] = f1(T)','P1 = exp(14.35 - 2942/(T + 220))');
deff('[P2] = f2(T)','P2 = exp(14.25 - 2960/(T + 210))');
//*************//

P1sat = f1(Temp);// [kPa]
P2sat = f2(Temp);// [kPa]
deff('[y] = f3(x1)','y = P - (x1*P1sat) - (1 - x1)*P2sat');
x1 = fsolve(7,f3);
x2 = 1 - x1;
printf("In Liquid phase\n");
printf("The mole fraction of X is %.3f\n",x1);
printf("The mole fraction of Y is %.3f\n",x2);

y1 = x1*P1sat/P;
y2 = 1 - y1;
printf("In Vapour phase\n");
printf("The mole fraction of X is %.3f\n",y1);
printf("The mole fraction of Y is %.3f\n",y2);