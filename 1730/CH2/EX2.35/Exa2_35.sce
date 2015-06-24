//Exa2.35
clc;
clear;
close;
//given data
Hc=7900;//in A/m
d=1;//in mm
r=d/2;//in mm
r=r*10^-3;//in m
Ic=2*%pi*r*Hc;
disp("Critical current is : "+string(Ic)+" A");