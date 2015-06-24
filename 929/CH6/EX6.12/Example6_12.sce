//Example 6.12

clear;

clc;

C=10*10^(-9);

H0bpdB=0;

f0=10*10^3;

Q=10;

H0bp=10^(H0bpdB/20);

R1=Q/(2*%pi*f0*C*H0bp);

R2=(R1/((2*(Q^2))/(H0bp)))-1;

R3=(2*Q)/(2*%pi*f0*C);

BW=f0/Q;

BWer=0.01;//BW deviation from its design value is 1%

GBPmin=(2*Q*f0)/BWer;

printf("Components for the mentioned circuit :");

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.2f ohms",R2);

printf("\nR3=%.2f kohms",R3*10^(-3));

printf("\nGBP>=%.2f MHz",GBPmin*10^(-6));