//Exa:1.24
clc;
clear;
close;
V=220;//in volts
I=20;//in ampers
R=1;//in ohms
P_o=V*I-I^2*R;//Motor Output (in watts)
w=200;//in radians/second
T_l=P_o/w;//Load Torque (in N-m)
J=5;//kg-m^2
t_st=2.5;//in seconds
alpha=w/t_st;//angular acceleration (in rad/second^2)
K=(J*alpha+T_l)/I^2;
W_st=(J*R*w/K)+(T_l*R*t_st/K);
disp(W_st,'Energy Dissipated (in watts)=')