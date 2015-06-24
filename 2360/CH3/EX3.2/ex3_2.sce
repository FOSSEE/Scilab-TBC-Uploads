// Exa 3.2
format('v',7);clc;clear;close;
// Given data
B = 8*10^-3;//flux density in Wb/m^2
N = 300;// number of turns
l = 15;//length in mm
r = 30;//radius in mm
K = 2.5*10^-9;//spring constant in Nm/rad
J = 10*10^-9;// in kg-m^2
D = 2*10^-9;// in Nm/rads^-1
Rg = 80;// in ohm
A = l*r;// in mm^2
A = A * 10^-6;// in m^2
G = N*B*A;// in Nm/A
i = 1;// in µA
i = i * 10^-6;// in A
theta_f = (G*i)/K;// in rad
r = 1;// in m
r = r * 10^3;// in mm
d = 2*theta_f*r;//deflection of galvanometer  in mm
disp(d,"The deflection of galvanometer in mm is");
Si = d/i;// in mm/A
Si = Si * 10^-6;//Current sensitivity in mm/µA
disp(Si,"Current sensitivity in mm/µA is");
