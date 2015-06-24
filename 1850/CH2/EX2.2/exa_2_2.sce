// Exa 2.2
clc;
clear;
close;
// Part (i)
// Given data
V_in1= 5;// in micro volt
V_in1=V_in1*10^-6;// in volt
V_in2= -7;// in micro volt
V_in2=V_in2*10^-6;// in volt
Av=2*10^5;
V_out= (V_in1-V_in2)*Av;// in volt
disp(V_out,"(i) Output voltage in first case in volt");

// Part(ii)
V_in1= 10;// in mV
V_in1=V_in1*10^-3;// in volt
V_in2= 20;// in mV
V_in2=V_in2*10^-3;// in volt
V= Av*(V_in1*sqrt(2)-V_in2*sqrt(2));// V = V_out/sin(omega*t) in volts
V=ceil(V);
disp("(ii) Output voltage in second case : "+string(V)+"*sin(omega*t) volts")

