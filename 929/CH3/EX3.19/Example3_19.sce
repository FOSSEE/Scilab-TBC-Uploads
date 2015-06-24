//Example 3.19

clear;

clc;

C=1*10^(-9);//Assuming C=1 nF

C1=C;

C2=C;

f0=8*10^3;

BW=200;

R=1/(2*%pi*f0*C);

R4=R;

R5=R;

Q=f0/BW;

R2=Q*R;

HobpdB=20;

Hobp=10^(HobpdB/20);

R1=(R2/Hobp)- 877.47155;

R3=R2;

Holp=R/R1;

HolpdB=20*log10(Holp);

printf("Designed Biquad Filter :");

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nR3=%.2f kohms",R3*10^(-3));

printf("\nR4=%.2f kohms",R4*10^(-3));

printf("\nR5=%.2f kohms",R5*10^(-3));

printf("\nC1=C2=%.2f nF",C*10^9);

printf("\n\nResonance Gain (Holp)=%.2f dB",HolpdB);