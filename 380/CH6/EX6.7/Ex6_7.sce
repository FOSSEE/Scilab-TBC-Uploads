//Caption:Find the torque and efficiency of the motor
//Exa:6.7
clc;
clear;
close;
V_s=120;//in volts
N_m=2400;//speed of motor (in rpm)
I_in=7;//input current (in Amperes)
L=0.5;//arm length (in meter)
F_d=4.57;//deflection force (in Newton)
W=0.03;//weight (in Newton)
F=F_d-W;
T_s=F*L;
disp(T_s,'shaft torque of motor (in Newton-meter)=');
w_m=(2*%pi*N_m)/60;
P_o=T_s*w_m;
P_in=V_s*I_in;
Eff=P_o/P_in;
disp(Eff*100,'Efficiency of motor (%)=');