// Prob 1.1
clc;
clear;
close;
format('v',5);
// Given data
s=36;//no. of slots
p=4;//no. of poles
ph=3;//no. of phase
s1=s/ph;//no. of slots pe phase
m=s1/p;//no. of slots per pole per phase
alfa=180*p/s;//slot angle in degree
Kd=sind(m*alfa/2)/(m*sind(alfa/2));//distribution factor
disp(Kd,"Distribution factor for 36 slots : ");
