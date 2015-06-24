//Example 3.21(a)

clear;

clc;

//From the result of Example 3.8 :

RA=10*10^3;

RB=18*10^3;

f0=1*10^3;

Q=5;

C=10*10^(-9);

C1=C;

C2=C;

R=15915.494;

K=2.8;

SR=(Q-(1/2));

SC=((2*Q)-(1/2));

SK=(3*Q)-1;

SRA=1-(2*Q);

printf("Sensitivities for Example 3.8 :");

printf("\nSR=%.2f percent",SR);

printf("\nSC=%.2f percent",SC);

printf("\nSRA=%.2f percent",SRA);

printf("\nSK=%.2f percent",SK);