//Example 6.5.3: Duty Cycle,Average Load voltage and RMS Load Voltage
clc;
clear;
close;
format('v',6)
//given data 
V=200;// in volts
T_on=500*10^-6;
f=1*10^3;// in Hz
D=T_on*f;
disp("part (a)")
disp("duty cycle is "+string(D)+" or "+string(D*100)+"%")
disp("part (b)")
VL_dc=D*V;
disp(VL_dc,"Average Load Voltage,(volts) = ")
disp("part (c)")
VL_rms=sqrt(D)*V;
disp(VL_rms,"RMS Load Voltage,VL_rms(volts) = ")
//part c answer is calculated wrong in book

