//Example 10.8

clear;

clc;

vI=10;

f=100*10^3;

T=1/f;

D=25;

TH=2.5*10^(-6);

C=(TH*1*10^(-3))/7.5;

R=vI/(7.5*f*C);

delvImax=2.5;

C1=(10^(-3)*TH)/delvImax;

RA=62;

RB=150*10^3;

RC=100*10^3;

printf("Designed Voltage to Frequency Converter :");

printf("\nR=%.1f kohms",R*10^(-3));

printf("\nC=%.f pF",C*10^12);

printf("\nC1=%.f nF",C1*10^9);

printf("\nRA=%.f ohms",RA);

printf("\nRB=%.f kohms",RB*10^(-3));

printf("\nRC=%.f kohms",RC*10^(-3));