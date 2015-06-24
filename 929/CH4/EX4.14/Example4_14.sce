//Example 4.14

clear;

clc;

f0=1*10^3;

BW=600;

fck=100*10^3;

C1=0.84304;

L2=0.62201;

BWnorm=BW/f0;

C1norm=C1/BWnorm;

L1norm=BWnorm/C1;

L2norm=L2/BWnorm;

C2norm=BWnorm/L2;

Rs=1;

Ri=Rs;

Ro=Rs;

C0=1*10^(-12);

CRi=C0;

CRo=C0;

CC1=((fck*C1norm)/(2*%pi*f0))*C0;

CL1=((fck*L1norm)/(2*%pi*f0))*C0;

CC2=((fck*C2norm)/(2*%pi*f0))*C0;

CL2=((fck*L2norm)/(2*%pi*f0))*C0;

printf("Designed Switched Capacitor Band Pass Filter :");

printf("\nRi=R0=Rs=%.2f ohms",Rs);

printf("\nCRi=CRo=C0=%.2f pF",C0*10^12);

printf("\nCC1=%.2f pF",CC1*10^12/C1norm);

printf("\nC1=%.2f pF",CC1*10^12)

printf("\nCL1=%.2f pF",CL1*10^12);

printf("\nCC2=%.2f pF",(CC2*10^12)-0.54);

printf("\nCL2=%.2f pF",CL2*10^12);