//Example 10.5

clear;

clc;

Vclamp=5;

VT=10;

VDon=0.7;

Vz5=Vclamp-(2*VDon);

Rrat=Vclamp/VT;

R1=20*10^3;

R2=R1*Rrat;

f0min=10;

f0max=10*10^3;

f0range=f0max/f0min;

Rpot=2.5*10^6;

Rs=Rpot/f0range;

Rmin=Rs;

C=(R2/R1)/(4*Rmin*f0max);

IRmax=Vclamp/Rmin;

IR2max=Vclamp/R2;

Ib=1*10^(-3);

Il=1*10^(-3);

Vsat=13;

IR3max=IRmax+IR2max+Ib+Il;

R3=(Vsat-Vclamp)/IR3max;

printf("Designed Basic Triangular/Square Wave Generator :");

printf("\nR=%.1f kohms",Rmin*10^(-3));

printf("\nR1=%.f kohms",R1*10^(-3));

printf("\nR2=%.f kohms",R2*10^(-3));

printf("\nR3=%.2f kohms",R3*10^(-3));

printf("\nC=%.f nF",C*10^9);