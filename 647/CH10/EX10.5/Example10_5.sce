clear;
clc;

// Example: 10.5
// Page: 401

printf("Example: 10.5 - Page: 401\n\n");

// Solution

//*****Data******//
deff('[P1] = f1(T)','P1 = exp(14.3916 - 2795/(T + 230))');
deff('[P2] = f2(T)','P2 = exp(14.2724 - 2945.47/(T + 224))');
deff('[P3] = f3(T)','P3 = exp(14.2043 - 2972.64/(T + 209))');
//*************//

// Solution (i)

//*****Data******//
Temp = 75;// [OC]
P = 75;// [kPa]
x1 = 0.30;
x2 = 0.40;
//*************//

x3 = 1 - (x1 + x2);
P1sat = f1(Temp);// [kPa]
P2sat = f2(Temp);// [kPa]
P3sat = f3(Temp);// [kPa]
P = x1*P1sat + x2*P2sat + x3*P3sat;// [kPa]
y1 = x1*P1sat/P;
y2 = x2*P2sat/P;
y3 = x3*P3sat/P;
printf("Solution (i)\n");
printf("The mole fraction of acetone is %.3f\n",y1);
printf("The mole fraction of acetonitrile is %.3f\n",y2);
printf("The mole fraction of nitromethane is %.3f\n",y3);

// Solution (ii)

//*****Data*****//
Temp = 80;// [OC]
y1 = 0.45;
y2 = 0.35;
//**************//

y3 = 1 - (y1 + y2);
P1sat = f1(Temp);// [kPa]
P2sat = f2(Temp);// [kPa]
P3sat = f3(Temp);// [kPa]
P = 1/((y1/P1sat) + (y2/P2sat) + (y3/P3sat));// [kPa]
x1 = y1*P/P1sat;
x2 = y2*P/P2sat;
x3 = y3*P/P3sat;
printf("Solution (ii)\n");
printf("The mole fraction of acetone is %.3f\n",x1);
printf("The mole fraction of acetonitrile is %.3f\n",x2);
printf("The mole fraction of nitromethane is %.3f\n",x3);