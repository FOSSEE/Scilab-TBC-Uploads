// Exa 2.9
clc;
clear;
close;
// Given data
e= 1.6*10^-19;// in C
d= 1.03;// in mm
d= d*10^-3;// in m
R= 6.51;// in ohm
l= 300;// in m
n= 8.4*10^28;// per m^3
r= d/2;// in m (radius)
A= %pi*r^2;// in m^2
rho= R*A/l;// in ohm meter
sigma=  1/rho;// in mho/m
disp(sigma,"The coductivity of copper in mho/m is : ")
miu_e= sigma/(n*e);// m^2/V-sec
disp(miu_e,"The mobility of charge carriers in m^2/V-sec is : ")
