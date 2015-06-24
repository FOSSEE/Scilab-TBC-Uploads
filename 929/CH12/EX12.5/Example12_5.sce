//Example 12.5

clear;

clc;

Vclamp=5;

n=12;

f0step=1;

Vz5=3.6;

R1=20*10^3;

R2=R1;

R3=6.2*10^3;

f0FSR=(2^n)*f0step;

iO=100*10^(-6);

C=(iO*(R2/R1))/(4*Vclamp*f0FSR);

printf("Designed Digitally Programmable triangular or square wave oscillator");

printf("\nR1=%.f kohms",R1*10^(-3));

printf("\nR2=%.f kohms",R2*10^(-3));

printf("\nR3=%.1f kohms",R3*10^(-3));

printf("\nC=%.2f nF",C*10^9);

printf("\nUse 1.0 nF, which is more easily available, and raise R1 to 24.3 kohms,1 percent");