//Example 5.10

clear;

clc;

T=25;

Ib=75*10^(-9);

Ios=80*10^(-9);

Vos=100*10^(-6);

Vs=15;

R1=4.99*10^(3);

R2=365;

R3=4.99*10^3;

R4=499;

R5=499;

R6=20*10^3;

R7=19.6*10^3;

R8=100;

R9=100*10^3;

R10=1*10^3;

C=100*10^(-12);

EI1=Vos+(((R1*(R2+(R8/2)))/(R1+(R2+(R8/2))))*Ib);

EI2=EI1;

EI3=Vos+(((R4*R6)/(R4+R6))*Ios);

A=10^3;

Eo=(A*(EI1+EI2))+((R6/R4)*EI3);

Eos=Eo+64*10^(-3);

Vx=Eos;

RB=100*10^3;

RA=RB/abs(Vs/Vx);

RC=100*10^3;///Choosing RC=100 kohms

printf("RA=%.f kohms",RA*10^(-3));

printf("\nRB=%.f kohms",RB*10^(-3));

printf("\nRC=%.f kohms",RC*10^(-3));