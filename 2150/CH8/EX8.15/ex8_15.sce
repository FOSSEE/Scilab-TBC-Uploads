// Exa 8.15
clc;
clear;
close;
// Given data
V_i1 = 150;// in µV
V_i2 = 140;// in µV
V_d = V_i1-V_i2;// in µV
V_C = (1/2)*(V_i1+V_i2);// in µV
disp("Part (i)")
CMRR = 100;
A_d = 4000;
V_o = (A_d * V_d)*(1+(1/CMRR)*(V_C/V_d));// in µV
V_o = V_o * 10^-3;// in mV
disp(V_o,"The output voltage in mV is");
disp("Part(ii)")
CMRR = 10^5;
V_o = (A_d * V_d)*(1+(1/CMRR)*(V_C/V_d));// in µV
V_o = V_o * 10^-3;// in mV
disp(V_o,"The output voltage in mV is");
