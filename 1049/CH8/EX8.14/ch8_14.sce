clear;
clc;
f=50;
T=1/f;
I=.5;
di=I/T;    //di=di/dt
V_s=220;
L=V_s/di;    printf("source inductance=%.1f H",L);

t=20*10^-6;
fos=2;    //factor of safety
t_c=t*fos;
R=10;
C=t_c/(R*log(2));    printf("\ncommutating capacitor=%.2f uF",C*10^6);