// Exa 2.1
clc;
clear;
close;
// Given data
miu= 0.3;// in m^2/vs
V= 50;// in mV
V=V*10^-3;// in V
d=0.4;// in mm
d=d*10^-3;// in m
// Part (a)
// miu= vd/E and vd= miu*E, so
vd= miu*V/d;// in m/s
disp(vd,"Drift velocity in m/s is : ")

// Part (b)
T= d/vd;// in sec
disp(T*10^6,"Time required for an electron to move in µs is :")
