//Exa:3.8
clc;
clear;
close;
alpha_f=0;//in degrees
alpha_a=30;//in degrees
V=220;//in volts
I_a=40;//in amperes
R_a=0.2;//in amperes
K_t=1.12;//motor voltage constant (in Volt/radian/sec)
R_f=200;//in ohms
V_f=2*V*sqrt(2)*cosd(alpha_f)/%pi;//in volts
I_f=V_f/R_f;//in amperes
V_a=2*V*sqrt(2)*cosd(alpha_a)/%pi;//in volts
E_b=V_a-(I_a*R_a);//in volts
T_d=K_t*I_a*I_f;
disp(T_d,'(a) Torque developed (in N-m)=');
N=E_b*60/(2*%pi*K_t*I_f);
disp(ceil(N),'(b) Motor Speed (in rpm)=')