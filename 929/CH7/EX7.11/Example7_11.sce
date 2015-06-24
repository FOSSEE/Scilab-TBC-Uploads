//Example 7.11

clear;

clc;

ft=16*10^6;

enw=4.5*10^(-9);

fce=100;

IB=1*10^(-12);

fL=0.01;

R1=100*10^(9);

C1=45*10^(-12);

R2=10*10^6;

C2=0.5*10^(-12);

b0rec=1;

binfrec=91;

fz=350;

fp=31.8*10^3;

fx=176*10^3;

k=1.38*10^(-23);

T=25+273;

iR2=sqrt((4*k*T)/R2);

q=1.602*10^(-19);

in=sqrt(2*q*IB);

Enoe=binfrec*enw*sqrt(((%pi/2)*fx)-fp);

EnoR=R2*iR2*sqrt((%pi/2)*fp);

Eno=sqrt((Enoe^2)+(EnoR^2));

printf("Total Output Noise=%.f uV",Eno*10^6);