// Exa 8.19
clc;
clear;
close;
// Given data
V_o = 2;// in V
R_i = 20;// in kΩ
R_f = 1;// in MΩ
V_i = -((V_o*R_i)/R_f);// in mV
disp(V_i,"The input volatge in mV is");
