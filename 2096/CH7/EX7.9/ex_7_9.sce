//Example 7.9 // force
clc;
clear;
close;
//given data :
A=6*6*10^-6; // in m^2
t=1.8*10^-3; // in m
g=0.055; // in Vm/N
E=120; // in volts
p=E/(g*t);
F=p*A;
disp(F,"force,F(N) = ")
