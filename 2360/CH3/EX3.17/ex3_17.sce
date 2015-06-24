// Exa 3.17
format('v',7);clc;clear;close;
// Given data
Idc = 2;//dc current in mA
Idc = Idc * 10^-3;// in A
Rm = 500;//meter resistance in ohm
Erms = 10;//r.m.s value in v
Eav = 9;//average value in V
Edc = 0.9*Erms;//dc voltage in V
Rs = (Edc/Idc) - Rm;//multiplier resistance in ohm
Rs = Rs * 10^-3;// in k ohm
disp(Rs,"The multiplier resistance in kΩ is");
