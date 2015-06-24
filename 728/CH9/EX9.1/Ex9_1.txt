//Caption:Calculate operating frequency of IMPATT diode
//Exa:9.1
clc;
clear;
close;
v_d=10^7*10^-2;//drift velocity(in m/s)
L=2*10^-6;//drift length(in m)
f=v_d/(2*L);//in Hz
disp(f/10^9,'Operating Frequency (in GHz) =');