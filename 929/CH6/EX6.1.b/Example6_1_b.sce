//Example 6.1(b)

clear;

clc;

R1=2*10^3;

R2=18*10^3;

b=0.1;

fb=100*10^3;

efimax=5;

fmax=tan(efimax*%pi/180)*fb;

printf("f<=%.2f kHz",fmax*10^(-3));