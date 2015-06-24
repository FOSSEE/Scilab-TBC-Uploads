//Exa 5.9
clc;
clear;
close;
//given data
rho=7.7*10^3;// in kg/m^3
k=12;// in W/mK
Cp= 130;// in J/kg degree C
Pr=0.011;
delta=8*10^-8;// in m^2/s


d=0.06;// in m
m=4;// in kg/s
t_i=200;// in degree C
del_t=25;// in degree C
miu=rho*delta;
Re= 4*m/(%pi*d*miu);
// From correlation  Nu =h*d/k = 4.82+0.0185*Pe^0.827
Pe=Re*Pr;
h=(4.82+0.0185*Pe^0.827)*k/d;// in W/m^2K
// Length of tube required by doing every balance
//  m*Cp*del_t = h*A*(t_s-t_b) = h*(%pi*d*l)*(t_s-t_b)   // its given (t_s-t_b) = 40 degree C
l= m*Cp*del_t/(h*(%pi*d)*40);// in meter
disp(l,"Length of tube in meter");
