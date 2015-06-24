//Example 4.11

clear;

clc;

Rnew=100*10^3;

fc=300;

wc=2*%pi*fc;

L1old=1.02789;

L2old=0.15134;

L3old=1.63179;

L4old=0.44083;

L5old=0.81549;

Rold=1;

C2old=1.21517;

C4old=0.93525;

kz=Rnew*Rold;

C1new=1/(kz*wc*L1old);

C2new=1/(kz*wc*L2old);

C3new=1/(kz*wc*L3old);

C4new=1/(kz*wc*L4old);

C5new=1/(kz*wc*L5old);

L2new=kz/(wc*C2old);

L4new=kz/(wc*C4old);

//Finding the Elements of GIC

C=10*10^(-9);

R1=(L2new/C)^(1/2);

R3=R1;

R4=R1;

R5=R1;

R2=(L4new/C)^(1/2);

R6=R2;

printf("Designed High Pass Filter :");

printf("\nRnew=%.f kohms",Rnew*10^(-3));

printf("\nC1new=%.2f nF",C1new*10^9);

printf("\nC2new=%.2f nF",C2new*10^9);

printf("\nC3new=%.2f nF",C3new*10^9);

printf("\nC4new=%.2f nF",C4new*10^9);

printf("\nC5new=%.2f nF",C5new*10^9);

printf("\nL2new=%.2f H",L2new);

printf("\nL4new=%.2f H",L4new);

printf("\n\nThe elements for GIC :");

printf("\nR1=R3=R4=R5=%.2f kohms",R1*10^(-3));

printf("\nR2=R6=%.2f kohms",R2*10^(-3));