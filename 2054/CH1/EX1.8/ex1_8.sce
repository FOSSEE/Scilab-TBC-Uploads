//Exa:1.8
clc;
clear;
close;
V=230;//in volts
N1=750;//in rpm
R=10;//in ohms
I_a=30;//in amperes
N2=N1*((V+I_a*R)/V)^-1;
disp(int(N2),'Speed (in rpm)=')