// Exa 1.13
clc;
clear;
close;
format('v',9)
// Given data
e = 1.6*10^-19;// in C
miu_e = 0.38;// in m^2/V-s
miu_h = 0.18;// in m^2/V-s
V = 10;// in V
l = 25;// in mm
l = l * 10^-3;// in m
w = 4;// in mm
w = w * 10^-3;// in m
t= 1.5*10^-3;// in m
E = V/l;// in V/m
v_e = miu_e*E;// in m/s
disp(v_e,"The electron drift velocity in m/s is");
v_h = miu_h*E;// in m/s
disp(v_h,"The hole drift velocity in m/s is");
n_i = 2.5*10^19;// in /m^2
sigma_i = n_i*e*(miu_e+miu_h);// in (ohm-cm)^-1
disp(sigma_i,"The interinsic conductivity of Ge in (ohm-cm)^-1 is");
A = w*t;// in m^2
I = sigma_i*E*A;// in A
I = I * 10^3;// in mA
disp(I,"The total current in mA is");
