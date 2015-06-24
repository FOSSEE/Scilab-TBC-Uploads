// Caption: Finding electromagnetic torque
clear;
close;
clc;
V_t=128;
E_a=125;
R_a=.02;
I_a=(V_t-E_a)/R_a;//armature current

P_t=V_t*I_a;//terminal power;
P_e=E_a*I_a;//electromagnetic power;
T=P_e/(100*%pi);//torque
disp(T,'electromagnetic torque=');