//Caption: Find the resistance required
//Exa:8.3
clc;
clear;
close;
I_1=40//Current taken by series motor(in A)
V=500//Supplied voltage(in volts)
n_1=100//Initial speed(in%)
n_2=80//final speed(in%)
I_2=sqrt(((I_1^2)*(n_2^2))/(n_1^2))
a=(I_1*(n_1/100))/(I_2*(n_2/100))
R=((a*V)-V)/(a*I_2)
disp(R,'Resistance required(in ohms) is=')