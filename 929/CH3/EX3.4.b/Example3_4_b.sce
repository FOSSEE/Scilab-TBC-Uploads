//Example 3.4(b)

clear;

clc;

dcgaindB=20;//Gain in dB

dcgain=10^(20/20);

f0=10^3;

//We need R2=dcgain*R1;

R1approx=20*10^(3);

R2approx=dcgain*R1approx;

Capprox=1/(2*%pi*f0*R2approx);

n=(Capprox*10^9);

C=Capprox/n;

R2=R2approx*n;

R1=R2/dcgain;

//Hs=-(R2/R1)*(1/(R2Cs+1))

Hmag=1;

H0=(R2/R1);

f=(((H0/Hmag)^(2)-1)*(f0^2))^(1/2);

s=%i*f;

Hs=-(R2/R1)*(1/(R2*C*s+1));

Hsph=180-(atan(f/f0)*(180/%pi));

printf("The frequency at which gain drops to 0dB=%.3f kHz",f*10^(-3));

printf("\nCorresponding phase=%.2f deg",Hsph);