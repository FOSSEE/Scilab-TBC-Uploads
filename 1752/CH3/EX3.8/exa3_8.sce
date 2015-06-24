//Exa 3.8
clc;
clear;
close;
//given data
T_0=150;// in degree C
T_infinite=40;// in degree C
w=1;// in m
t=0.75*10^-3;// in m
d=5*10^-2;// in meter
L=25*10^-3;// in meter
k=75;// in W/mK 
h=23.3;// in W/m^2K
N=12;// numbers of fins
Ac=w*t;//in square meter
rho=2*(w+t);// in meter
delta=Ac/rho;
L_c=L+delta;
ML_c=L_c*sqrt(h*rho/(k*Ac))
q_fin= N*sqrt(h*rho*k*Ac)*(T_0-T_infinite)*tanh(ML_c);
q_fin=floor(q_fin);
A_0=%pi*d*w-12*Ac
q_unfin= h*A_0*(T_0-T_infinite);
q_total=q_fin+q_unfin;
disp("Rate of heat transfer is : "+string(q_total)+" watt");
