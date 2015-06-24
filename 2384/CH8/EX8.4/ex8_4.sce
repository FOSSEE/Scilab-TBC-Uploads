// Exa 8.4
clc;
clear;
close;
format('v',6)
// Given data
N = 500;
R = 4;// in ohm
d = 0.25;// in m
a = 700;// in mm^2
a = a*10^-6;// in m^2
V = 6;// in V
miu_r = 550;
miu_o = 4*%pi*10^-7;
// Evaluation of current by ohm's law
I = V/R;// in A
l = %pi*d;// in m
H = (N*I)/l;// in A/m
// Evaluation of flux density
B = miu_o*miu_r*H;// in T
// Evaluation of total flux
phi = B*a;// in Wb
phi= phi*10^3;// in mWb
disp(phi,"The total flux in the coil in m/Wb is");
