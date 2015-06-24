// Exa 5.7
format('v',7);clc;clear;close;
// Given data
R = 500;// in ohm
del_r = 20;// in ohm
E = 10;// in V
Rg = 125;// in ohm
V_TH = (E*del_r)/(4*R);// in V
Req = R;// in ohm
// The current through the galvanometer 
Ig = V_TH/(Req+Rg);// in A
Ig = Ig * 10^6;// in µA
disp(Ig,"The current through the galvanometer in µA is");
