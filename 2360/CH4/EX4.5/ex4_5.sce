// Exa 4.5
format('v',7);clc;clear;close;
// Given data
f = 1;// in MHz
f = f * 10^6;// in Hz
T = 1/f;// in sec
T = T * 10^6;// in µsec
n = 8;
// Conversion time 
T_C = T*(n+1);// in µsec
disp(T_C,"The conversion time in µsec is");
