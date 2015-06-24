//Example 6.15

clear;

clc;

ft=100*10^6;

brec=1.5*10^3;

R2=1.5*10^3;

rn=50;

A01=1;

A02=10;

A03=100;

//R11=R2/(A01-1) ->R1=infinity

R12=R2/(A02-1);

R13=R2/(A03-1);

fB1=ft/(1+(A01/30));

fB2=ft/(1+(A02/30));

fB3=ft/(1+(A03/30));

tR1=2.2/(2*%pi*fB1);

tR2=2.2/(2*%pi*fB2);

tR3=2.2/(2*%pi*fB3);

printf("Values of R1, fB and tR for A0=1 :")

printf("\nR1=infinity");

printf("\nfB=%.2f MHz",fB1*10^(-6));

printf("\ntR=%.2f nS",tR1*10^9);

printf("\n\nValues of R1, fB and tR for A0=10 :")

printf("\nR1=%.2f ohms",R12);

printf("\nfB=%.2f MHz",fB2*10^(-6));

printf("\ntR=%.2f nS",tR2*10^9);

printf("\n\nValues of R1, fB and tR for A0=100 :")

printf("\nR1=%.2f ohms",R13);

printf("\nfB=%.2f MHz",fB3*10^(-6));

printf("\ntR=%.2f nS",tR3*10^9);