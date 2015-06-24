//Exa 5.6
clc;
clear;
close;
//given data
rho=997;// in kg/m^3
k=0.608;// in W/mK
Cp= 4180;// in J/kg K
miu=910*10^-6;// in Ns/m^2
d=30*10^-3;// in m
m=0.02;// in kg/s
t_o=30;// in degree C
t_i=20;// in degree C
Re= 4*m/(%pi*d*miu);
q_desh=12*10^3;// in W/m^2
// since Re < 2300, flow is laminar one

// Part(a)
// Nu = h*d/k = 4.36
h=4.36*k/d;
disp(h,"Heat transfer coefficient in W/m^2K");

// Part (b)
L=m*Cp*(t_o-t_i)/(q_desh*%pi*d);
disp(L,"Length of pipe in meter");

// Part(c)
// q_desh= h*(t_infinite-t_o)
t_infinite = q_desh/h+t_o;
disp(t_infinite,"The inner tube surface temperature at the outlet in degree C");

// Part(d)
f=64/Re;
disp(f,"Friction Factor ");

// Part(e)
V=4*m/(%pi*d^2*rho);// in m/s  ( because m= rho*V*A , m= rho*V*%pi*d^2/4 )
del_P= f*L*rho*V^2/(d*2);// in N/m^2
disp(del_P,"The pressure drop in the pipe in N/m^2");

// Note: In part(b) value of L is miss printed actual value is .739 m





