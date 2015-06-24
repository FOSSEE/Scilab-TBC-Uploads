// Exa 6.7
clc;
clear;
close;
format('v',9)
// Given data
Im = 20;// in mA
Im =  Im * 10^-3;// in A
Vm = 50;// in mV
Vm = Vm * 10^-3;// in V
V = 500;// in V
Rm = Vm/Im;// in ohm
Rs = (V/Im)-Rm;// in ohm
disp(Rs,"The series resistance in ohm is");
