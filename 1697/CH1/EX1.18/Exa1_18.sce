//Exa 1.18
clc;
clear;
close;
//given data :
f=20;//in MHz
f=f*10^6;//in Hz
le=100;//in m
c=3*10^8;//speed of light in m/s
lambda=c/f;//in m
Rr=160*(%pi*le/lambda)^2;//in ohm
disp(Rr/1000,"Radiation Resistance in KOhm : ");