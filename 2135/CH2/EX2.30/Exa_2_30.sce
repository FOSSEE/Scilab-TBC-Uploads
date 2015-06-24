//Exa 2.30
clc;
clear;
close;
format('v',6);

//Given Data : 
Vdot=0.032;//m^3/s
d=1.5;//m
L=4.2;//m
m=3500;//Kg
V=%pi/4*d^2*L;//m^3
rho=m/V;//Kg/m^3
disp(rho,"Density of liquid in Kg/m^3 : ");
m_dot=rho*Vdot;//Kg/s
disp(m_dot,"Mass flow rate in Kg/s : ");
