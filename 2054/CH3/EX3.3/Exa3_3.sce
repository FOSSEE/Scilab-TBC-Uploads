//Exa:3.3
clc;
clear;
close;
alpha_a=45;//in degrees
V=230;//in volts
K=1.668;//K_a*Phy (in volt/radian/second)
R_a=0.2;//in ohms
I_a=30;//in amperes
V_a=2*V*sqrt(2)*cosd(alpha_a)/%pi;//in volts
E_b=V_a-(I_a*R_a);// in volts
w=E_b/K;//in radian/seconds
N=ceil(w*60/(2*%pi));
disp(N,'(a) Speed Of Motor (in rpm)=')
T=K*I_a;
disp(T,'(b) Motor Torque (in Newton-meter)=')