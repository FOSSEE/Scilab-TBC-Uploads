//Caption:Find the reading on the scale
//Exa:6.8
clc;
clear;
close;
P_o=5*746;//power output (in Watts)
N_m=1200;//speed of motor (in rpm)
L=0.4;//arm length (in meter)
w_m=(2*%pi*N_m)/60;
T_s=P_o/w_m;
F=T_s/L;//force reading on the scale (in Newton)
disp(F/9.81,'Reading on the scale (in Kg)=');