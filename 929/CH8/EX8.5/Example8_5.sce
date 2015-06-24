//Example 8.5

clear;

clc;

GBP=10*10^6;

ro=100;

A0=-2;

CL=5*10^(-9);

R1=10*10^3;

R2=20*10^3;

Rs=(R1/R2)*ro;

Cf=((1+(R1/R2))^2)*(ro/R2)*CL;

f3dB=1/(2*%pi*R2*Cf);

b=1/3;

fx=b*GBP;

printf("(a) Rs=%.f ohms",Rs);

printf("\n    Cf=%.f pF",Cf*10^12);

x=poly(0,'f');

A=A0/((1+(%i*(x/fx)))*(1+(%i*(x/f3dB))));

printf("\n\n(b) A(jf)=");

disp(A);

printf("V/V");