// Exa 4.7
format('v',7);clc;clear;close;
// Given data
n = 3;// number of bit
R = 1/(10^n);
V = 1;// in V
// For 1V range,
Resolution = V*R;// in V
disp(Resolution,"For 1 V range, the resolution in V is");
// For 50 V range,
V = 50;// in V
Resolution = V*R;// in V
disp(Resolution,"For 50 V range, the resolution in V is");
