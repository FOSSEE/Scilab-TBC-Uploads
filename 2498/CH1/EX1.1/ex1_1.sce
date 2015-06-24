// Exa 1.1
clc;
clear;
close;
format('v',6)
// Given data
miu = 0.2;// in m^2/V-s
V = 100;// in mV
V = V * 10^-3;// in V
d = 0.5;// in mm
d = d * 10^-3;// in m
// mobility, miu = Vd/E and
E = V/d;
// Drift velocity,
Vd = miu*E;// in m/s
disp(Vd,"The electron drift velocity in m/s is");
// Time required,
T = d/Vd;// in sec
T=T*10^6;// in µs
disp(T,"The time required for an electron to move across the thickness in micro seconds is");
