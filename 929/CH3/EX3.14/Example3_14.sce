//Example 3.14

clear;

clc;

C=100*10^(-9);//Assuming C=100 nF

C1=C;

C2=2*C;

f0=60;

BW=5;

R=1/(2*%pi*f0*C);

R1=R;

R2=R/2;

Q=f0/BW;

K=(4-(1/Q))/2;

RA=10*10^3;

RB=(K-1)*RA;

printf("Designed Second Order Notch Filter :")

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nRA=%.2f kohms",RA*10^(-3));

printf("\nRB=%.2f kohms",RB*10^(-3));

printf("\nC1=%.2f nF",C1*10^9);

printf("\nC2=%.2f nF",C2*10^9);

printf("\n\nLow and High Frequency Gain=%.2f V/V",K);