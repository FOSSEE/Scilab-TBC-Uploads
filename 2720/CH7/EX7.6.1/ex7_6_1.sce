// Exa 7.6.1
clc;
clear;
close;
// Given data
O_V = 5;// output voltage in V
V_D = 1.5;//voltage drop in V
R = (O_V - V_D)/O_V;
R = R * 10^3;// in ohm
disp(R,"The resistance value in Ω is");
disp("As this is not standard value, use R=680 Ω which is a standard value")
