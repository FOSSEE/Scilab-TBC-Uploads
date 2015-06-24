//Example 3.4(a)

clear;

clc;

dcgaindB=20;//Gain in dB

dcgain=10^(20/20);

f0=10^3;

//We need R2=dcgain*R1;

R1approx=20*10^(3);

R2approx=dcgain*R1approx;

Capprox=1/(2*%pi*f0*R2approx);

n=(Capprox*10^9);

C=Capprox/n;

R2=(R2approx*n)-1154.9431;

R1=R2/dcgain;

printf("Components for achieving the mentioned requirements :");

printf("\nR1=%.1f kohms",R1*10^(-3));

printf("\nR2=%.f kohms",R2*10^(-3));

printf("\nC=%.f nF",C*10^9);