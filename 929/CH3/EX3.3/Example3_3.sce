//Example 3.3

clear;

clc;

R=10;

C=40*10^(-6);

L=5*10^(-3);

s=%i*10^3;

Hsnum=(R/L)*s;

Hsden=((s^(2))+(R/L)*s+(1/(L*C)));

Hs=Hsnum/Hsden;//Transfer Function

Hsmag=10*abs(Hs);

Hsphase1=atan(imag(Hs)/real(Hs));

Hsphase=(Hsphase1*(180/%pi))+45;

printf("vO(t)=%.3f",Hsmag);

printf("cos((10^3)t+%.2f",Hsphase);

printf(") V");

//vot=Hsmag*cos(10^3*t+Hsphase);