// 6.1
clc;
Vcc=50;
t=10*10^-3;
R=500*10^3;
C=0.2*10^-6;
tc=R*C;
Vo=Vcc*[1-exp(-t/tc)];
printf("\namplitude of voltage after 10 ms=%.2f V",Vo)
