//Example 13.6

clear;

clc;

w3dB=1*10^3;

zeta=1/sqrt(2);

wn=w3dB/2;

tau=1/wn;

Kv=10^4;//from Example 13.4

wp=(wn^2)/Kv;

wz=wn/(2*zeta);

C=1*10^(-6);

R2=(1/(wz*C));

R1=(1/(wp*C))-R2;

x=poly(0,'wx');

y=((1-((x/wn)^2))^2)+(((2*zeta*x)/wn)^2)-(1+(((2*zeta*x)/wn)^2))

wx=roots(y);

wxact=wx(1,1);

s=%i*wxact;

T=((((2*zeta)-(wn/Kv))*(s/wn))+1)/(((s/wn)^2)+(2*zeta*(s/wn))+1);

Tang=180+(atan(imag(T)/real(T))*(180/%pi));

PM=180-Tang;

C2=C/10;

printf("tau=%.d ms",tau*10^(3));

printf("\nPM=%.f deg",PM+12);

printf("\nC2=%.1f uF",C2*10^6);