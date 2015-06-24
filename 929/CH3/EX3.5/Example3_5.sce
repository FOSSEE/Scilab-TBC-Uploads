//Example 3.5

clear;

clc;

GdB=20;

G=10^(20/20);

//->R2/R1=G

R1approx=10*10^3;

R2approx=G*R1approx;

f1=20;

w1=2*%pi*f1;

Capprox1=1/(w1*R1approx);

n=Capprox1/(10^(-6));

C1=Capprox1/n;

R1=(R1approx*n)-87.747155;

R2=R1*G;

f2=20*10^3;

w2=2*%pi*f2;

C2=1/(R2*w2);

printf("Designed Wideband Band Pass Filter :");

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.1f kohms",R2*10^(-3));

printf("\nC1=%.f uF",C1*10^(6));

printf("\nC2=%.f pF",C2*10^(12));