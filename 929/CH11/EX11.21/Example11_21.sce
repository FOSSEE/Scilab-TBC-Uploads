//Example 11.21

clear;

clc;

VI=12;

fs=100*10^3;

Vsm=1;

L=100*10^(-6);

C=300*10^(-6);

ESR=0.05;

dcHCO=VI/Vsm;

w0=1/(sqrt(L*C));

f0=w0/(2*%pi);

wz=1/(ESR*C);

fz=wz/(2*%pi);

Q=1/(ESR*sqrt(C/L));

fx=fs/5;

wx=2*%pi*fx;

f1=f0;

f2=f1;

f3=fz;

f4=2*fx;

HCO=(VI/Vsm)*((1+(%i*(wx/wz)))/[1-((wx/w0)^2)+((%i*(wx/w0))/Q)]);

Tmod=1;

HEA=Tmod/abs(HCO);

f5=1.47*10^3;

R2=10*10^3;

C3=1/(2*%pi*f2*R2);

R3=1/(2*%pi*f3*C3);

C2=1/(2*%pi*f5*R2);

R4=1/(2*%pi*f1*C2);

C1=240*10^(-12);

printf("Designed Error Amplifier :");

printf("\nR2=%.f kohms",R2*10^(-3));

printf("\nR3=%.f ohms",R3);

printf("\nR4=%.f kohms",R4*10^(-3));

printf("\nC1=%.1f pF",C1*10^12);

printf("\nC2=%.1f nF",C2*10^9);

printf("\nC3=%.1f nF",C3*10^9);