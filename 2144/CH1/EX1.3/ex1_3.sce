// Exa 1.3
clc;
clear;
close;
// Given data
G_P = 30;// guage pressure of steam in bar
P1 = 745;// in mm
P1= P1/750;//  in bar
PressureInBoiler = G_P+P1;// in bar
disp("The absolute pressure in the bioler in bar is "+string(PressureInBoiler)+" bar or "+string(PressureInBoiler*10^5)+" N/m^2");
P2 = 708.2;// in mm
P2= P2/750;// in 
PressureInCond = P1-P2;// in bar
disp(PressureInCond,"The absolute pressure in the Condenser in bar is");
disp(PressureInCond*10^5,"The absolute pressure in the Condenser in N/m^2 is");
