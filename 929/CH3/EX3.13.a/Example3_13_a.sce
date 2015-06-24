//Example 3.13(a)

clear;

clc;

C=10*10^(-9);//Assumed

C1=C;

C2=C;

f0=1*10^3;

BW=100;

R=(2^(1/2))/(2*%pi*f0*C);

R1=R;

R2=R;

R3=R;

Q=f0/BW;

K=4-((2^(1/2))/Q);

RA=10*10^3;

RB=(K-1)*RA;

RG=K/(4-K);

printf("Designed KRC Second Order Band Pass filter");

printf("\nR1=R2=R3=%.1f kohms",R*10^(-3));

printf("\nRA=%.2f kohms",RA*10^(-3));

printf("\nRB=%.2f kohms",RB*10^(-3));

printf("\nC1=C2=%.2f nF",C*10^9);

printf("\n\nResonance Gain=%.2f V/V",RG);