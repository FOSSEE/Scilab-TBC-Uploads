//Example 7.2
//Power required
//Page No. 429
clc;clear;close;

Q=1;        //in m^3/s
D_i=0.5;         //in m
rho=1000;        //kg/m^3
nu=1.02*10^-6;        //in m^2/s
g=9.81;          //in m/s^2
U_av=Q/(%pi*D_i^2/4);
Re=U_av*D_i/nu;
f=0.01;
Fric_loss=f*U_av^2/(D_i*2*g);
P=Fric_loss*rho*g*Q;
printf('Power required = %f kW/km',P)
