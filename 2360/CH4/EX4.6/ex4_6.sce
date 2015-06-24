// Exa 4.6
format('v',7);clc;clear;close;
// Given data
n = 8;// number of bit
T_C = 9;//conversion time in µs
T_C = T_C * 10^-6;// in s
// The maximum frequency 
f_max = 1/(2*%pi*T_C*(2^n));// in Hz
disp(f_max,"The maximum frequency in Hz is");
