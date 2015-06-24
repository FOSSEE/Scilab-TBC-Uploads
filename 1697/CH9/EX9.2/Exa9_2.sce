//Exa 9.2
clc;
clear;
close;
//given data :
P=200;//in KW
D=20;//in Km
D=D*10^3;//in m
E=300*sqrt(P)/D;//in V/m
disp(E*10^3,"Field Strength at 20 Km in mV/m:")