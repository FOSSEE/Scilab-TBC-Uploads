// Exa 4.3
clc;
clear;
close;
// Given data
A_VD= 200;// in V/mV
A_VD=A_VD*10^3;// in V/V
B1=1;// in MHz
B1=B1*10^6;// in Hz
f1=B1;
f0= f1/A_VD;// in Hz
disp(f0,"Cut-off frequency in Hz")

