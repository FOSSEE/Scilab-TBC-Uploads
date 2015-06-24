//Example 4_16
clc;
clear;
close;
format('v',7);
//given data : 
V=1;//V
L=10;//m
tau=10^-14;//s
e=1.6*10^-19;//C///Charge on electron
m=0.02*9.1*10^-31;//kg//effective mass of electron
E0=V/L;//V/m
v0=e*E0*tau/m;//m/s
disp(v0,"Drift Velocity(ms^-1)")
