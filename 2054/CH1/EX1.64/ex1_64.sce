//Exa:1.64
clc;
clear;
close;
T_L=600;//in N-m
T_m=450;//in N-m
N=600;//in rpm
w_o=2*%pi*N/60;//in rad/sec
s=0.08;//slip
w=s*w_o;//in rad/sec
K=w/T_m;//Torque constant
J=(-10/K)/log(0.25);//in Kg-m^2
J_m=10;//in Kg-m^2
J_F=J-J_m;
disp(J_F,'Moment Of Inertia Of Flywheel (in Kg-m^2)=');