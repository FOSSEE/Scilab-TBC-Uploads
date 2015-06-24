//Example 7.4

clear;

clc;

R=10*10^3;

k=1.38*10^(-23);

T=25+273;//Room Temperature in Kelvin

eR=sqrt(4*k*T*R);

printf("(a) Noise Voltage(eR)=%.2f nV/sqrt(Hz)",eR*10^9);

iR=eR/R;

printf("\n(b) Noise Current(iR)=%.2f pA/sqrt(Hz)",iR*10^12);

fH=20*10^3;

fL=20;

ER=eR*sqrt(fH-fL);

printf("\n(c) rms noise voltage over audio range=%.2f uV",ER*10^6);