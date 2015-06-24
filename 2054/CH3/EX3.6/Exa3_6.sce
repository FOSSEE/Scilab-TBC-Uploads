//Exa:3.6
clc;
clear;
close;
alpha=60;//in degrees
V=250;//in volts
T=140;//in Newton-Meter
K_a=2.5;//motor voltage constant (in Volt/radian/sec)
R_a=0.2;//in ohms
V_a=2*V*sqrt(2)*cosd(alpha)/%pi;//in volts
I_a=T/K_a;//in amperes
disp(I_a,'(a) Motor Armature Current (in amperes)=');
E_b=V_a-(I_a*R_a);//in volts
w=E_b*I_a/T;
disp(w,'(b) Motor Speed (in radian/sec)=')