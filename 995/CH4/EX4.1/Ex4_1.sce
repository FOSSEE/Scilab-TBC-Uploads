//Ex:4.1
clc;
clear;
close;
V_m=20;//in volts
f=50;//in Hz
t1=2.5*10^-3;
t2=15*10^-3;
V1=V_m*sin(2*%pi*f*t1);
V2=V_m*sin(2*%pi*f*t2);
printf("Voltage at 2.5ms = %f V",V1);
printf("\n Voltage at 15ms = %f V",V2);