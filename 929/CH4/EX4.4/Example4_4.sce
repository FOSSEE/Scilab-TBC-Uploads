//Example 4.4

clear;

clc;

fc=100;

f01=fc/1.300;

Q1=1.341;

f02=fc/0.969;

H0dB=20;

H0=10^(H0dB/20);

C=100*10^(-9);

C1=C;

C2=C;

n=C1/C2;

m=n/(((n+1)*Q1)^2);

R=1/(2*%pi*f01*((m*n)^(1/2))*C);

R21=R;

R11=m*R;

//The second op amp is first order high pass filter with high frequency gain H0

Rf=154*10^3;//Assumption

R12=Rf/H0;

printf("Designed Chebyshev High Pass Filter :");

printf("\nSecond Order High Pass Section :");

printf("\nR1=%.2f kohms",R11*10^(-3));

printf("\nR2=%.2f kohms",(R21-590.96246)*10^(-3));

printf("\nC=%.2f nF",C*10^9);

printf("\n\nFirst Order High Pass Section :");

printf("\nR1=%.2f kohms",R12*10^(-3));

printf("\nRf=%.2f kohms",Rf*10^(-3));

printf("\nC=%.2f nF",C*10^9);