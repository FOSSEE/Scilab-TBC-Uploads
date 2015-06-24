//Exa:1.61
clc;
clear;
close;
T_l=100*9.81;//in N-m
t=10;//in seconds
J=1000;//kg-m^2
f=50;//in hertz
P=4;//no.of poles
N_s=120*f/P;//synchronous speed (in rpm);
s=0.06;//slip
w_s=s*N_s*2*%pi/60;//slip speed (in rad/sec)
K=w_s/(50*9.81);
T_m=T_l-T_l*exp(-t/(K*J));
N_sn=K*T_m*60/(2*%pi);//in rpm
N=N_s-N_sn;
disp(N,'Speed at the end of deceleration period (in rpm)=')