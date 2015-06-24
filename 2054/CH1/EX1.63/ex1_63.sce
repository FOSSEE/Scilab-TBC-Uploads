//Exa:1.63
clc;
clear;
close;
P_o=50*1000;//in watts
f=50;//in hertz
s_f=0.04;//slip
P=6;//no.of poles
N_s=120*f/P;//Synchronous Speed (in rpm)
N_f=N_s*(1-s_f);
T_f=P_o/(2*%pi*N_f)