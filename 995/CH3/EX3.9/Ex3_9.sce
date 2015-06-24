//Ex:3.9
clc;
clear;
close;
c=1*10^-6;//in farads
r=3.3*10^6;//in ohms
t=1;//in sec.
V_s=9;//in volts
V_c=V_s*(1-%e^(-t/(r*c)));
printf("Voltage produced = %f V",V_c);