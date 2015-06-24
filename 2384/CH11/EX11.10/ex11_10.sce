// Exa 11.10
clc;
clear;
close;
format('v',6)
// Given data
R2 = 0.024;// in per phase
X2 = 0.6;// in ohm per phase
s = R2/X2;
f = 50;// in Hz
P = 4;
Ns = (120*f)/P;// in rpm
// Speed corresponding to maximum torque
N = Ns*(1-s);// in rpm
disp(N,"The speed at which maximum torque is developed in rpm is");
