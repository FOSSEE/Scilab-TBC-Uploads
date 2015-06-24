// Exa 3.16
format('v',7);clc;clear;close;
// Given data
Erms = 10;//r.m.s. range of the voltmeter in V
Ep = sqrt(2)*Erms;// in V
Eav = 0.6*Ep;// in V
Eav = 9;// in V 
Eavoutput = (1/2)*Eav;// in V
Edc = 0.45*Erms;// in V
Idc = 1;// in mA
Idc = Idc * 10^-3;// in A
Rm = 200;// in W
Rs = (Edc/Idc) - Rm;//required multiplier resistance in ohm
Rs = Rs * 10^-3;// in k ohm
disp(Rs,"The required multiplier resistance in kΩ is");
