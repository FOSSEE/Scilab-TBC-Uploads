//Example 3.13(b)

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

RG1dB=20;

RG1=10^(RG1dB/20);

R1A=(R1*(RG/RG1))+488.81355;

R1B=(R1/(1-(RG1/RG)))+169.90124;

printf("Designed KRC Second Order Band Pass filter with 20 dB Resonance Gain");

printf("\nR1A=%.2f kohms",R1A*10^(-3));

printf("\nR1B=%.2f kohms",R1B*10^(-3));

printf("\nRA=%.2f kohms",RA*10^(-3));

printf("\nRB=%.2f kohms",RB*10^(-3));

printf("\nC1=C2=%.2f nF",C*10^9);