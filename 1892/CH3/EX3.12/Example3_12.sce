// Example 3.12

clear; clc; close;

format('v',6);
// Given data
J=10^-4;//in Kgm^2;
w1=200;//in rad/sec
w2=300;//in rad/sec
delf=0.2;//in sec
Tf=0.06;//in N-m

//Calculations
dwBYdf=(w2-w1)/delf;//
Tm=J*dwBYdf+Tf;//in N-m
disp(Tm,"Motor Torque in N-m : ");
