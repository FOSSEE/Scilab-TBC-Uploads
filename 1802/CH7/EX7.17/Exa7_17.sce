//Exa 7.17
clc;
clear;
close;
//Given data : 
format('v',7);
V=200;//in volt
I=1;//in A/m
R=2*0.05/1000;//in ohm/m
l=1*1000;//in meter
IT=I*l;//in Ampere
RT=R*l;//in ohm
VD=IT*RT/8;//in volt
Vmin=V-VD;//in volt
disp(Vmin,"Minimum potential occurs at the mid point & is(in V) : ");