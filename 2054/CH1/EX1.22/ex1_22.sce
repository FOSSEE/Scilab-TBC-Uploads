//Exa:1.22
clc;
clear;
close;
P_o=37.5*1000;//in watts
N=500;//in rpm
T_l=P_o*60/(2*%pi*N);//Full load  torque (in Newton-meter)
T_st=(1.1+1.4)*T_l/2;// Average Starting Torque (in Newton-meters)
T_a=T_st-T_l;//total available torque for acceleration
J=20;//Moment of Inertia (in Kg-m^2)
t1=J*2*%pi*N/(60*T_a);
disp(t1,'Time in attaining full load speed (in seconds)=')