//Example 3.12

clear;

clc;

//To minimize the component count, choose the unity gain option, for which RA=infinity and RB=0.

C=0.1*10^(-6);

C1=C;

C2=C;

n=C1/C2;

Q=1.5;

f0=200;

m=n/(((n+1)*Q)^2);

R=1/(2*%pi*f0*((m*n)^(1/2))*C);

R2=R;

R1=m*R;

printf("Designed High Pass KRC Filter :");

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nC1=%.1f uF",C1*10^6);

printf("\nC2=%.1f uF",C2*10^6);