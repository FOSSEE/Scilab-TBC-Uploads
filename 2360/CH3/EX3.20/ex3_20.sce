// Exa 3.20
format('v',7);clc;clear;close;
// Given data
Erms = 200;//r.m.s value in V
Rm = 100;//meter resistance in ohm
Idc = 25;//dc current in mA
Idc= Idc*10^-3;// in A
Rf = 500;// in ohm
R_D = 2*Rf;// in ohm
Edc = 0.9*Erms;// in V
Rs = (Edc/Idc) - Rm;// in ohm
R_m = Rm+R_D;// in ohm
Rs = (Edc/Idc) - R_m;//required series resistance in ohm
disp(Rs,"The required series resistance in Ω is");
