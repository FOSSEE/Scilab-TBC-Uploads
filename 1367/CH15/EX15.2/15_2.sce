//Find Drift Velocity
//Ex:15.2
clc;
clear;
close;
n=10^19;//no. of electrons per unit volume
e=1.602*10^-19;//charge of an electron in C
a=0.018;//conductivity in ohm/m
m=9.1*10^-31;//mass of an electron in kg
v=0.16;//in volts
t=0.29;//thickness in mm
efg=v/t;//electric field gradient in V/m
vd=a*efg/(n*e);
vd1=10^3*vd;//in m/s
disp(vd1,"Drift Velocity (in m/sec) = ");