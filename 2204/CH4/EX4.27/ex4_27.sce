// EXa 4.27
clc;
clear;
close;
// Given data
R_F = 10;// in  k ohm
R_G = 5;// in  k ohm
R1 = 1;// in  k ohm
R2 = 2;// in  k ohm
A = (1+ ((2*R_F)/R_G))*(R2/R1);
V_in2 = 2;// in mV
V_in1 = 1;// in mV
V_out = A*(V_in2-V_in1);// in mV
disp(V_out,"The output voltage in mV is");
