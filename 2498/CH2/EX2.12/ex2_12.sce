// Exa 2.12
clc;
clear;
close;
format('v',6)
// Given data
Vrms = 10;// in V
r_f = 0.3;// in ohm
R_L = 2;// in ohm
Vm = sqrt(2)*Vrms;// in V
Im = Vm/(R_L+r_f);// in A
// The value of Idc 
Idc = Im/%pi;// in A
disp(Idc,"The value of Idc in A is");
// The RMS value of output current 
Irms = Im/2;// in A
disp(Irms,"The RMS value of output current in A is");
