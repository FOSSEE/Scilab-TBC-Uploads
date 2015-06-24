//Example 9.1

clear;

clc;

Vref=2;

R1=20*10^3;

R2=30*10^3;

Vos=5*10^(-3);

IB=250*10^(-9);

Rpar=(R1*R2)/(R1+R2);

VN=Rpar*IB;

Vneti=Vos+VN;

VT=(1+(R2/R1))*(Vref-Vneti);

printf("Worst Case Error=%.f mV",Vneti*10^3);