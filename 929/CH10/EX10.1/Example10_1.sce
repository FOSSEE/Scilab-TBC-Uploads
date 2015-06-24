//Example 10.1

clear;

clc;

f0min=1;

f0max=10*10^3;

VDon=0.7;

Vsa=5;

Vz5=Vsa-(2*VDon);

Vsat=13;

IRmin=10*10^(-6);

R1=33*10^3;

R2=R1;

VT=2.5;

Rmax=(Vsa-VT)/(IRmin);

Rpot=Rmax;

Rs=Rpot/39;

f0=0.5;

C1=1/(f0*2*(Rpot+Rs)*log(1+(2*(R1/R2))));

C2=C1/10;

C3=C2/10;

C4=C3/10;

vN=-2.5;

iRmax=(Vsa-vN)/Rs;

IR2=Vsa/(R1+R2);

IB=1*10^(-3);

ILmax=1*10^(-3);

IR3max=iRmax+IR2+IB+ILmax;

R3=(Vsat-Vsa)/IR3max;

R4=10*10^3;

printf("Designed Square Wave Generator :");

printf("\nR1=%.f kohms",R1*10^(-3));

printf("\nR2=%.f kohms",R2*10^(-3));

printf("\nR3=%.2f kohms",R3*10^(-3));

printf("\nRs=%.2f kohms",Rs*10^(-3));

printf("\nRpot=%.2f kohms",Rpot*10^(-3));

printf("\nR4=%.2f kohms",R4*10^(-3));

printf("\nC1=%.1f uF",(C1*10^6)-0.25);

printf("\nC2=%.2f uF",(C2*10^6)-0.02);

printf("\nC3=%.f nF",(C3*10^9)-2.50);

printf("\nC4=%.1f nF",(C4*10^9)-0.25);