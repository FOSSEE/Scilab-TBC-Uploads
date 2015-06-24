// Exa 3.5
clc;
clear;
close;
// Given data
B=1.8*10^-3;// in Wb/m^2
K= 1.4*10^-7;// in Nm/radian
theta= 90;// in °
theta=theta*%pi/180;
Tc= K*theta;// in N-m
i=5;// in mA
i=i*10^-3;// in amp
A=1.5*1.2;// in cm^2
A=A*10^-4;// in m^2
// Formula Tc= Td= B*i*A*N;
N= Tc/(B*i*A);
N=ceil(N);
disp(N,"Number of turns is") 
