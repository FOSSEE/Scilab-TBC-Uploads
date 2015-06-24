clc;
clear all;
k=1.38e-23;//boltzman constant
u=9.4e-24;
H=2;//megnetic field in Wb/m^2
T=2*u*H/(log(2)*k);//temperature of the system
disp('K',T,'temperature of the system is:')
