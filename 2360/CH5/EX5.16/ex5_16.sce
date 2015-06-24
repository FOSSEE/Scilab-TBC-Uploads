// Exa 5.16
format('v',7);clc;clear;close;
// Given data
R = 1000;// in ohm
E = 20;// in V
Ig = 0.1;// in nA
Ig = Ig * 10^-9;// in A
Req = R;// in ohm
//For small change in resistance, Thevenin's voltage,  V_TH = (E*del_r)/(4*R);
// Ig = V_TH/Req;
del_r =  (Ig*4*R*R)/E;//smallest change in resistance in ohm
del_r= del_r*10^6;// in µΩ
disp(del_r,"The smallest change in resistance in µΩ is");
