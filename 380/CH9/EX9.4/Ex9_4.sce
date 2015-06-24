//Caption:Find the max power developed and slip and the torque developed
//Exa:9.4
clc;
clear;
close;
V=120;//in volts
f=60;//in Hertzs
R_1=0.1;//in ohms
X_1=0.15;//in ohms
R_2=0.2;//in ohms
X_2=0.25;//in ohms
Z_e=R_1+R_2+%i*(X_1+X_2);//Eqv impedance in ohms
s_p=R_2/(R_2+polar(Z_e));
disp(s_p,'Slip=');
P_dm=(3*V^2)/(2*(R_1+R_2+abs(Z_e)));
disp(P_dm/1000,'max power developed (in Kilo-Watts)=');
N_s=120*f/6;//synchronous speed (in rpm)
w_s=(N_s*2*%pi)/60;//in rad/sec
w_m=(1-s_p)*w_s;
T_d=P_dm/w_m;
disp(T_d,'Torque developed (in Newton-meter)=');