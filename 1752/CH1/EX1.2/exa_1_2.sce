//Exa 1.2
clc;
clear;
close
// given data
t_i=120;// in degree C
t_o=40;// in degree C
K=0.04;// unit less
x=0.06;//in m
Q=50;// in W
disp("Assuming steady state heat transfer in the wall.");
// Rate of heat transfer across the wall = Rate of electrical energy dissipation in the furnance
// Formula Q= K*A*(t_i-t_o)/x;
A=Q*x/(K*(t_i-t_o));
disp(A,"Area of wall in square meter is : ")
