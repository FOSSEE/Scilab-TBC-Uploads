//Caption:Find the line current at start
//Exa:12.9
clc;
clear;
close;
P=5000//Power supplied to induction motor(in watts)
V=415//Voltage supplied to motor(in volts)
f=50//frequency(in hertz)
e=0.85//Efficiency
pf=0.8//Power factor lagging
b=5//Ratio of short circuit current to full load current
P_i=P/e
I_fl=P_i/(sqrt(3)*V*pf)
I_l=(1/3)*b*I_fl
disp(I_l,'Line current(in A)=')