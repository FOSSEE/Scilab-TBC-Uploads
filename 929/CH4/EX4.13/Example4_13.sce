//Example 4.13

clear;

clc;

C1=0.618;

C5=C1;

C3=2.00;

L2=1.618;

L4=L2;

fc=1*10^3;

wc=2*%pi*fc;

fck=100*10^3;

C0=1*10^(-12);

CC1=(C1/wc)*fck*C0;

CL2=(L2/wc)*fck*C0;

CC5=CC1;

CL4=CL2;

CC3=(C3/wc)*fck*C0;

CRi=C0;

CRo=C0;

printf("Designed Switched Capacitor Low Pass Filter for Butterworth Response :");

printf("\nCRi=CRo=C0=%.2f pF",C0*10^12);

printf("\nCC1=CC5=%.2f pF",CC1*10^12);

printf("\nCL2=CL4=%.2f pF",CL2*10^12);

printf("\nCC3=%.2f pF",CC3*10^12);