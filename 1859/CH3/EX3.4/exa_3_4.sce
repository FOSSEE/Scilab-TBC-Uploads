// Exa 3.4
clc;
clear;
close;
// Given data
d= 42;// in mm
d=d*10^-3;// in meter
r= 0.6;// in meter
// Formula d= 2*theta*r
theta= d/(2*r);// radian
theta= 180*theta/%pi;// in °
disp(round(theta),"Angle through which coil turn in ° ");
