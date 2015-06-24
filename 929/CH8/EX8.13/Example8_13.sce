//Example 8.13

clear;

clc;

a0=10^5;

f1=1*10^3;

f2=100*10^3;

f3=5*10^6;

A0=20;

R1=1.05*10^3;

R2=20*10^3;

b0=1/(1+(R2/R1));

a0b0=a0*b0;

f=700*10^3;

T=a0b0/[(1+((%i*f)/f1))*(1+((%i*f)/f2))*(1+((%i*f)/f3))];

Tang=-(180-(180/%pi)*atan(imag(T)/real(T)));

PM=180+Tang;

printf("(a) PM=%.1f degrees indicating a circuit in bad need of compensation.",PM);

amod=sqrt(20);

aang=-192.3;

fx=1.46*10^6;

Cf=sqrt(1+(R2/R1))/(2*%pi*R2*fx);

PM1=180+aang-(90-(2*(180/%pi)*atan(sqrt(1+(R2/R1)))));

printf("\n\n(b) PM after compensation=%.1f degrees",PM1);

f3dB=(1/(2*%pi*R2*Cf))+1000;

printf("\n\n(c) f-3dB=%.f kHz",f3dB*10^(-3));