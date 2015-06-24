//Example 3.4.b // insertion loss
clc;
clear;
close;
//given data :
y=3;// in micro-m
alfa=2;
d=50;// in micro-m
a=d/alfa;
Lt=0.75*(y/a);
eta_lat=1-Lt;
L_lat=-10*log10(eta_lat);
disp(L_lat,"The insertion loss,(dB) = ")
