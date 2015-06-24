// 2.1
clc;
t=0.35;
P=1500*10^3;
E=180*10^9;
r=36.5;
x=16;
y=3;
a=%pi*36.5*10^-3;
da=(0.05*a*P/E)*((r/t)^0.2)*((x/y)^0.33)*((x/t)^3);
printf("Displacement of the free end = %.2f m", da)
