//Example 5.1(d)

clear;

clc;

R1=22*10^2;

R2=2.2*10^5;

IB=80*10^(-9);

IOS=3*10^(-9);

Rp=(R1*R2)/(R1+R2);

dcgain=(1+(R2/R1));

R=(R1*R2)/(R1+R2);

Ip=((2*IB)+IOS)/2;

In=((2*IB)-IOS)/2;

Eo=dcgain*((R*In)-(Rp*Ip));

printf("Eo=(+-)%.1f mV",-Eo*10^3);