//Exa:1.62
clc;
clear;
close;
P_o=500*735.5;//in watts
N_o=40;//in rpm
s_f=0.12;
N_f=N_o*(1-s_f);//full load speed (in rpm)
T_f=P_o/(2*%pi*N_f/60);//Full load torque (N-m)
T_m=2*T_f;//Motor torque (in N-m)
T_l=41500*9.81;//Load torque (in N-m)
t=10;//seconds
w_s=s_f*N_o*2*%pi/60;//slip speed (in rad/sec)
K=w_s/T_f;
J=-t/(K*log(1-(T_m/T_l)));
disp(J,'Moment of Inertia (in Kg-m^2)=')