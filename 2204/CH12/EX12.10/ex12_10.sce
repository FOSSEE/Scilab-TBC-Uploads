// Exa 12.10
clc;
clear;
close;
// Given data
C_F = 12;//clock frequency in kHz
C_F = C_F * 10^3;// in Hz
V_i = 100;// in mV
V_R = 100;// in mV
t1 = 83.33*10^-3;// in sec
D = C_F * t1*(V_i/V_R);// in counts
disp("The Digital output is : "+string(round(D))+" counts");
