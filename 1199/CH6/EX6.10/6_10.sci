// 6.10
clc;
Ea=2000;
L=0.3;
ld=2*10^-2;
d=5*10^-3;
D=3*10^-2;
Ed=(2*d*Ea*D)/(L*ld);
gain=100;
V_require=Ed/gain;
printf("\nInput voltage required for deflection of 3mm =%.1f V",V_require)
