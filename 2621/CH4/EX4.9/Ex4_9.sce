// Example 4.9
clc;
clear;
close;
format('v',6);
// Given data
R= 40;// in kΩ
R= R*10^3;// in Ω
C= 0.2;// in µF
C= C*10^-6;// in F
Vin= 5;// in V
V1= 3;// in V
t= 50;// in ms
Vout= 3;// in V
t=[0:0.1:50];
vout= -1/(R*C)*integrate('(Vin-V1)','t',0,t)*10^-3+Vout;//in V
plot(t,vout);
title("Sketch of output voltage");
xlabel("Time in milliseconds");
ylabel("Output voltage in volts")
disp("Plot for output voltage shown in figure");





