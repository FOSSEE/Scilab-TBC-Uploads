//Caption:Find the restraining force of the spring
//Exa:3.9
clc;
clear;
close;
N=500;//no. of turns
u_o=4*%pi*10^-7;//Permeablity of air
I=4.2;//main winding current(in A)
A=2.25*10^-4;//area of air gap(in m^2)
x=0.002;//length of air gap(in m)
i=I*1.50;//min current needed for activating relay
F_m=u_o*A*0.5*((N*i)/x)^2;//Refer to eqn 3.53
disp(F_m,'restraining force of the spring(in Newton)=')