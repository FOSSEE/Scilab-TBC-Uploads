//Exa3.15
clc;
clear;
close;
// given data
E_x=5;// in V/cm
miu_e=3800;// in cm^2/V-s
B_z=0.1;// in Wb/m^2
d=4;// in mm
d=d*10^-3;// in m
v=miu_e*E_x;//in cm/second
v=v*10^-2;// in m/second
V_H=B_z*v*d;// in V
V_H=V_H*10^3;// in m V
disp("Hall voltage is : "+string(V_H)+" mV");
