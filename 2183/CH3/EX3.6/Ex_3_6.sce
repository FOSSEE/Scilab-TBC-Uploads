//Example 3.6 //total insertion loss
clc;
clear;
close;
//given data :
a=8/2;// in micro-m
V=2.4;
w=a*((0.65+(1.62*V^(-3/2))+(2.88*V^-6))/sqrt(2));
y=1;
NA=0.1;
theta=%pi/180;
n1=1.46;
T_lat=2.17*(y/w)^2;
T_ang=2.17*((theta*w*n1*V)/(a*NA))^2;
T=T_lat+T_ang;
disp(T,"Total insertion loss,(dB) = ")
