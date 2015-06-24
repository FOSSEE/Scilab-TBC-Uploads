//Exa 6.3
clc;
clear;
close;
// given data
V_out=150;// in V
t=2*10^-3;// in m
g=0.05;// in V-m/N
A=5*5*10^-6;// in m^2
F=V_out*A/(g*t);// in N
disp("Force applied is : "+string(F)+" N")

