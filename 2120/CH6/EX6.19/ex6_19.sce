// Exa 6.19
clc;
clear;
close;
// Given data
n = 1080;// in cycle/min
Q_s = 57;// in J/cycle
T1 = 12;// in °C
T1 = T1 + 273;// in K
T2 = 2;// in °C
T2 = T2 + 273;// in K
// 1-(Q_r/Q_s) = 1- (T2/T1)
Q_r = (T2/T1)*Q_s;// in J/cycle
W = Q_s - Q_r;// in J/cycle
P_o = W * n;// in J/min
P_o = P_o/60;// in W
disp(P_o,"The output of the engine in watt is");

