//Exa:1.40
clc;
clear;
close;
f=50;//in hertz
P=4;//Number of poles
N_s=120*f/P;//Synchronous Speed (in rpm)
s_f=0.05;//Full load Slip
N_f=N_s*(1-s_f);//Full load speed (in rpm)
P_d=30*1000;//in watts
T_f=P_d/(2*%pi*N_f/60);//In N-m
s_2=2-s_f;//Slip at plugging
T_p=(s_2/s_f)*T_f*(1+16*s_f^2)/(1+16*s_2^2);
disp(T_p,'Plugging Torque (in N-m)=')