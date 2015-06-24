//1.20
clc;
T=.5*10^-3;
V=10;
Vp=0.6*V+0.5;
Ip=5*10^-3;
Rmax=(V-Vp)/Ip;
printf("Rmax=%.0f ohm", Rmax)
C=1*10^-6;
R=T/(C*log(1/(1-0.6)));
printf("\nR=%.1f ohm", R)
disp('since the value of R is less than Rmax so the value is suitable')


