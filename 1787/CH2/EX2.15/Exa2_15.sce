//Exa 2.15
clc;
clear;
close;
//given data
e=1.6*10^-19;//in coulamb
E=100;//in V/m
RH=0.0145;//in m^3-coulamb^-1
MUn=0.36;//in m^2/V-s
J=MUn*E/RH;//in A/m^2
disp(J,"Current density in A/m^2 : ");