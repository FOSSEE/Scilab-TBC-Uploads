//Example 4.12

clear;

clc;

fck=100*10^3;

f0=1*10^3;

Ctotmax=100*10^(-12);

C1=1*10^(-12);//Assumed

C2=C1*(fck/(2*%pi*f0));

Q=0.707;

C3=C1*(1/Q);

printf("Designed Switched Capacitor Biquad Filter :");

printf("\nC1=%.2f pF",C1*10^12);

printf("\nC2=%.2f pF",C2*10^12);

printf("\nC3=%.2f pF",C3*10^12);