//Example 3.17

clear;

clc;

f0=1*10^3;

Q=10;

HondB=0;

Hon=10^(HondB/20);

C=10*10^(-9);//Assuming C=10 nF

C1=C;

C2=C;

R3=10*10^3;

R4=R3/Hon;

R5=Hon*R4;

R2=(2*Q)/(2*%pi*f0*C);

R1A=Q/(Hon*2*%pi*f0*C);

R1B=R1A/((2*Q^2/Hon)-1);

printf("Designed Multiple Feedback Notch Filter :");

printf("\nR1A=%.2f kohms",R1A*10^(-3));

printf("\nR1B=%.2f ohms",R1B);

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nR3=%.2f kohms",R3*10^(-3));

printf("\nR4=%.2f kohms",R4*10^(-3));

printf("\nR5=%.2f kohms",R5*10^(-3));

printf("\nC1=C2=%.2f nF",C*10^9);