//Exa 5.8
clc;
clear;
close;
//given data
rho=977;// in kg/m^3
k=0.608;// in W/mK
Cp= 4180;// in J/kg K
miu=910*10^-6;// in poise
d=0.02;// in m
m=0.02;// in kg/s
t_o=40;// in degree C
t_i=10;// in degree C
q_desh= 20*10^3;// in W/m^2

// Part (a)
Re= 4*m/(%pi*d*miu);
disp(Re,"Reynold number is :")

// Part(b)
// Nu = h*d/k = 4.364
h=4.364*k/d;
disp(h,"Heat transfer coefficient in W/m^2K");

// Part (c)
// q= q_desh*A = m*Cp*(t_o-t_i)
// q_desh *( %pi*d*l) = m*Cp*(t_o-t_i)
l=m*Cp*(t_o-t_i)/(q_desh*%pi*d);
disp(l,"Length of pipe in meter");
