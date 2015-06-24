// Exa 4.2
format('v',7);clc;clear;close;
// Given data
n = 12;//number of bit
Vi = 4.095;//input voltage in V
Q_E = Vi/(((2^n)-1)*2);//quantizing error in V
Q_E = Q_E * 10^3;// in mV
disp(Q_E,"The quantizing error in mV is");
