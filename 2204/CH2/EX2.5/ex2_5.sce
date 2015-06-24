// Exa 2.5
clc;
clear;
close;
// Given data
CMRR = 100;
V1 = 300;// in µV
V2 = 240;// in µV
V_id = V1-V2;// in µV
V_cm = (V1+V2)/2;// in µV
A_id = 5000;
A_cm = A_id/CMRR;
V_out = (A_id*V_id) + (A_cm*V_cm);// in µV
V_out = V_out * 10^-3;// in mV
disp("Part (i)")
disp(V_out,"The output Voltage in mV is");
disp("Part (ii)")
CMRR = 10^5;
A_cm = A_id/CMRR;
V_out = (A_id*V_id) + (A_cm*V_cm);// in µV
V_out = V_out* 10^-3;// in mV
disp(V_out,"The output voltage in mV is");
