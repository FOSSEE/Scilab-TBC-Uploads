//Example 1.20: 
clc;
clear;
close;
//given data :
epsilon_0=8.85*10^-12;// in farada/m
K=12;// constant for silicon
epsilon=epsilon_0*K
A=1*10^-8;// in m^2
W=5*10^-7;// in m
Ct=epsilon*A*10^14/W;
format('v',6)
disp(Ct,"the transition capacitance,Ct(PF)  = ")
