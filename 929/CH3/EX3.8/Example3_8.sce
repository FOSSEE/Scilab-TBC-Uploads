//Example 3.8

clear;

clc;

f0=1*10^3;

Q=5;

C=10*10^(-9);//Arbitrarily chosen value

R=1/(2*%pi*f0*C);

K=3-(1/Q);//DC gain

//->RB/RA=K-1

RA=10*10^3;//Assumed value of RA

RB=((K-1)*RA)-200;

C1=C;

C2=C;

printf("Designed Equal Component Second Order Low Pass Filter :");

printf("\nR=%.2f kohms",R*10^(-3));

printf("\nRA=%.2f kohms",RA*10^(-3));

printf("\nRB=%.2f kohms",RB*10^(-3));

printf("\nC=%.2f nF",C*10^9);

printf("\n\ndc gain (K)=%.2f V/V",K)