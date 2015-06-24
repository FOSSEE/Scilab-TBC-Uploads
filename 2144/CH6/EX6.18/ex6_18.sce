// Exa 6.18
clc;
clear;
close;
// Given data
P = 13.5;// power developed by engine in kW
P1 = 12;// Steam consumption of the engine in kg/kWh
S_C = P*P1;//steam consumed per hour  in kg
S_C = S_C/60;// in kg/min
x = 0.85;
V_g = 1.430;
Volume = x * V_g;// in m^3/kg
Volume = S_C * Volume;// in m^3
d = 15*10^-2;//diameter of exhaust pipe in meter
A = (%pi/4) * (d)^2;// in m^2
C = Volume/A;// in meter/minute
disp(C,"The velocity of steam in metre/minute is"); 
