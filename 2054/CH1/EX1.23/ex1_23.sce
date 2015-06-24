//Exa:1.23
clc;
clear;
close;
P_o=37.5*1000;//in watts
N=500;//in rpm
T_l=P_o*60/(2*%pi*N);//Full load  torque (in Newton-meter)
T_m=2*T_l;// Torque developed by motor during starting
T_a=T_m-T_l;//total available torque for acceleration
E=37.5*660*9.81;//Stored energy of machine
J=E*2/(2*%pi*N/60)^2;//Moment of inertia (in Kg-m^2)
alpha=T_a/J;//angular acceleration (in rad/sec^2)
t=(2*%pi*N/60)/alpha;
disp(t,'Starting Period (in seconds)=')