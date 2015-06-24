//Caption:Calculate the gap transit angle
//Exa:8.12
clc;
clear;
close;
V_o=1000;//Anode voltage(in volts)
gap=0.002;//in m
f=5*10^9;//in Hz
L=2.463*10^-3;//length of drift region (in m)
u_o=5.93*10^5*sqrt(V_o);//in m/s
Theeta_g=2*%pi*f*2*10^-3/u_o;//radians
disp(Theeta_g,'Transit angle(in radians) =');