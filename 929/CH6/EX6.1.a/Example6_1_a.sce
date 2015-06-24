//Example 6.1(a)

clear;

clc;

R1=2*10^3;

R2=18*10^3;

b=0.1;

fb=100*10^3;

emmax=0.01;

fmax=((((1/(1-emmax))^2)-1)*(fb^2))^(1/2);

printf("f<=%.1f kHz",fmax*10^(-3));