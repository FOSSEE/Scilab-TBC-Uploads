// 6.2
clc;
Vcc=4.76;
t=50*10^-6;
R=0.2*10^3;
C=0.2*10^-6;
tc=R*C;
Vo=Vcc*[exp(-t/tc)];
printf("\nvoltage across the capacitor after 50 microsecond=%.2f V",Vo)
