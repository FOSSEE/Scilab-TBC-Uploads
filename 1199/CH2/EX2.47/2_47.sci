// 2.47
clc;
g=0.055;
t=2*10^-3;
P=1.5*10^6;
Eo=g*t*P;
printf("Output voltage=%.0f V",Eo)
e=40.6*10^-12;
d=e*g*10^12;
printf("\n Charge sensitivity=%.2f pC/N",d)
