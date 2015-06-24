//Example 3.20

clear;

clc;

f0=1*10^3;

fz=2*10^3;

Q=10;

C=10*10^(-9);//Assume C=10 nF

R=(1/(2*%pi*f0*C))-120;

w0=2*%pi*f0;

wz=2*%pi*fz;

R1=Q*R;

R2=100*10^3;//Assumption

R3=R2;

R4num=R2*(w0^2);

R4den=Q*abs((w0^2)-(wz^2));

R4=R4num/R4den;

R5=R2*((w0/wz)^2);//as fz>f0

Hohp=R5/R2;

HohpdB=20*log10(Hohp);

printf("\nDesigned Biquad Filter for a low pass notch response :");

printf("\nR=%.2f kohms",R*10^(-3));

printf("\nR1=%.f kohms",R1*10^(-3));

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nR3=%.2f kohms",R3*10^(-3));

printf("\nR4=%.2f kohms",R4*10^(-3));

printf("\nR5=%.2f kohms",R5*10^(-3));

printf("\nC=%.2f nF",C*10^9);

printf("\n\nHigh Frequency Gain (Hohp)=%.2f dB",HohpdB);