//Caption:Find the speed of motor and torque under blocked rotor condition
//Exa:12.1
clc;
clear;
close;
flux=0.004;//(in Weber)
R_a=0.8;//armature resistance (in ohm)
V_s=40;//applied voltage (in Volts)
T_d=1.2;//in Newton-meter
K_a=95;//motor constant
w_m=(V_s/(K_a*flux))-((R_a*T_d)/(K_a*flux)^2);
N_m=w_m*60/(2*%pi);
disp(ceil (N_m),'speed of motor (in rpm)=');
w_mb=0;//for blocked rotor condition
T_db=(V_s*K_a*flux)/R_a;
disp(T_db,'torque developed under blocked rotor condition (in Newton-meter)=');