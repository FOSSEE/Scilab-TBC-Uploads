//Exa 4.14
clc;
clear;
close;
// Given data
R= 40*10^3;// in Ω
C= 0.2*10^-6;// in F
Vin= 5;// in V
V1=3;// in V
V2= V1;// in V
Vout= V2;// in V
t= 0:0.1:50;// in ms
Vout= -1/(R*C)*integrate('Vin-V1','t',0,t)/10^3+Vout;// in volts
plot(t,Vout);
xlabel("Time in milliseconds")
ylabel("Output voltage in volts")
title("Vout Graph")
disp("The Vout graph shown in figure")
