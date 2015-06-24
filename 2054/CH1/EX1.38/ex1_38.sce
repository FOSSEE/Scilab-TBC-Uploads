//Exa:1.38
clc;
clear;
close;
V=230;//in volts
I_a=100;//in amperes
R_a=0.05;//in ohms
E_b=V-I_a*R_a;//in volts
N=870;//in rpm
T=E_b*I_a/(2*%pi*N/60);//torque developed (in N-m)
T_l=400;//in N-m
I_an=I_a*T_l/T;//in amperes
E=V+I_an*R_a;//in volts
N1=N*E/230;
disp(N1,'Speed (in rpm)=')