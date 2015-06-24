//Exa:3.23
clc;
clear;
close;
V=230;//in volts
V_dc=sqrt(2)*V*2/%pi;//in volts
T_L=30;//in N-m
K_t=0.3;//torque constant (in N-m/A^2)
I_a=sqrt(T_L/K_t);
disp(I_a,'Average Motor Current (in Amperes)=');
w=(207-I_a)/(K_t*I_a);// in rad/sec
N=w*60/(2*%pi);
disp(N,'Speed (in rpm)=');