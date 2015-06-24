//Example 3.15

clear;

clc;

C=10*10^(-9);

C1=C;

C2=C;

f0=1*10^3;

Q=10;

H0dB=20;

H0=10^(H0dB/20);

R2=(2*Q)/(2*%pi*f0*C);

R1A=Q/(H0*2*%pi*f0*C);

R1B=R1A/((2*Q^2/H0)-1);

printf("Designed Multiple Feedback Band Pass Filter :")

printf("\nR1A=%.2f kohms",R1A*10^(-3));

printf("\nR1B=%.2f ohms",R1B);

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nC1=%.2f nF",C1*10^(9));

printf("\nC2=%.2f nF",C2*10^(9));