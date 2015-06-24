// Example 4.13
clc;
clear;
close;
format('v',6);
// Given data
Vp= 1;// in V
f= 1000;// in Hz
R= 1.5*10^3;// in Ω
C= 0.1*10^-6;// in F
// Vin= Vp*sin(omega*t)= Vp*sin(2*%pi*f)*t
disp("The input votage : Vin = sin(2000*%pi*t)")
RC= R*C;// in ΩF
V= -RC*2000*%pi;
//Vout= -RC*dVin/dt= -RC*Vp*2000*%pi*cos(2000*%pi*t)
disp("The output voltage : Vout = "+string(V)+" cos(2000*%pi*t)")
x=[0:0.1:4*%pi];
plot(-1.88*cos(x))
title("Output Waveform");
xlabel("---- Time ---->");
ylabel("---- output voltage ---->");
disp("Waveform is shown in figure.")




