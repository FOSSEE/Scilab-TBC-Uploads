// Exa 3.6
clc;
clear;
close;
// Given data
B=0.1;// in T
C= 100*10^-7;// in Nm/radian
theta= 120;// in °
theta=theta*%pi/180;
Tc= C*theta;// in N-m
N=200;// number of turns
A=2.5*2;// in cm^2
A=A*10^-4;// in m^2
// Formula Tc= Td= B*i*A*N;
i= Tc/(B*A*N);// in amp
disp(i*10^3,"Current in the coil in mA") 
