//Ex:2.18
clc;
clear;
close;
V_1=50;
V_2=10;
dV=V_1-V_2;//in volts
dt=0.1;//in seconds
C=22*10^-6;
i=C*(dV/dt)*1000;//in mA
printf("Current flow = %f milliAmps",i);