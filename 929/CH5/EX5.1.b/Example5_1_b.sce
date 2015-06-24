//Example 5.1(b)

clear;

clc;

R1=22*10^3;

R2=2.2*10^6;

IB=80*10^(-9);

IOS=20*10^(-9);

Rp=(R1*R2)/(R1+R2);

dcgain=(1+(R2/R1));

R=(R1*R2)/(R1+R2);

Ip=((2*IB)+IOS)/2;

In=((2*IB)-IOS)/2;

Eo=dcgain*((R*In)-(Rp*Ip));

printf("Eo=(+-)%.f mV",-Eo*10^3);