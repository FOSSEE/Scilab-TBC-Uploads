//Exa:1.58
clc;
clear;
close;
T_1=240;//in N_m
T_2=140;//in N-m
T_3=300;//in N-m
T_4=200;//in N-m
t_1=20;//in minutes
t_2=10;//in minutes
t_3=10;//in minutes
t_4=20;//in minutes
T=sqrt(((t_1*T_1^2)+(t_2*T_2^2)+(t_3*T_3^2)+(t_4*T_4^2))/(t_1+t_2+t_3+t_4));
N=720;//in rpm
P=T*2*%pi*N/60;
disp(P,'Power rating of Motor(in KWs)=');