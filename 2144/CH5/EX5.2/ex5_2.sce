// Exa 5.2
clc;
clear;
close;
// Given data
D = 0.3;// in m
L = 0.45;// in m
V_s = (%pi/4)*(D)^2*L;// in m^3
V_c = 0.0114;// in m^3
V = V_c+V_s;// in m^3
r = V/V_c;
Gamma = 1.4;
Eta = (1-((1/r)^(Gamma-1)))*100;// in %
disp(Eta,"Efficiency of engine in % is");
