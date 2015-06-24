//Example 6.14

clear;

clc;

zo=0.71*10^6;

Req=zo;

fb=350*10^3;

Ceq=1/(2*%pi*Req*fb);

vo=5;

iN=vo/Req;

printf("Ceq=%.2f pF",Ceq*10^12);

printf("\niN=%.2f uA",iN*10^6);