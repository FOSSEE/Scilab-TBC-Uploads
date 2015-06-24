// Example 7.1 page no-402
clear
clc

Av=-100
B=0.01
Avd=Av/(1-B*Av)
v1d=10^-3 //1mV
V0=Avd*v1d*1000
Vx=B*V0
V1=v1d+Vx
printf("V1=%.3f\nV1d=%.3f\n This is negative feedback because, v1<v1_dash\n", V1,v1d)
