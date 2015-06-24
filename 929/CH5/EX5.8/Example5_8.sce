//Example 5.8

clear;

clc;

As=-5;

Ri=30*10^3;

Vs=15;

R1=Ri;

R2=abs(As)*R1;

Rp=(R1*R2)/(R1+R2);

Vosmax=6*10^(-3);

Iosmax=200*10^(-9);

EImax=Vosmax+(Rp*Iosmax);

RA=1*10^3;

Rpc=Rp-RA;

EImaxs=EImax+(4*10^(-3));

RB=RA*(Vs/EImaxs);

RC=100*10^3;///Choosing RC=100 kohms

printf("R1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nRp=%.2f kohms",Rpc*10^(-3));

printf("\nRA=%.2f kohms",RA*10^(-3));

printf("\nRB=%.2f Mohms",RB*10^(-6));

printf("\nRC=%.2f kohms",RC*10^(-3));