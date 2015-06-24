// Exa 5.10
format('v',7);clc;clear;close;
// Given data
R1 = 120;// in ohm
R2 = 120;// in ohm
R3 = 120;// in ohm
R_V = 121;// in ohm
E_TH = 10;// in mV
E_TH = E_TH * 10^-3;// in V
// E_TH = E * ( (R3/(R3+R1)) - (R_V/(R_V+R2)) );
E = E_TH/((R3/(R3+R1)) - (R_V/(R_V+R2)));//required supply voltage  in V
disp(E,"The required supply voltage in V is");
R = 120;// in ohm
del_r = R_V-R;// in ohm
// E_TH = (E*del_r)/(4*R);
E = E_TH*4*R;//The approximation of slightly unbalanced bridge  in V
disp(E,"The approximation of slightly unbalanced bridge in V is");
