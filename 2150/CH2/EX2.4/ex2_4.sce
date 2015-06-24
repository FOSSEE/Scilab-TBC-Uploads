 // Exa 2.4
clc;
clear;
close;
// Given data
V_in  = 10;// in V
R1 = 2000;// in ohm
R2 = 2000;// in ohm
V_o = V_in * (R1/(R1+R2) );// in V
// Vdc= 5/(T/2)*integrate('sin(omega*t)','t',0,T/2) and omega*T= 2*%pi, So
Vdc= -5/%pi*(cos(%pi)-cos(0));// in V
disp(Vdc,"The value of Vdc in volts is : ");
PIV= V_in/2;// in V
disp(PIV,"The PIV value in volts is : ")
