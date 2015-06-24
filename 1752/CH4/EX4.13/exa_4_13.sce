//Exa 4.13
clc;
clear;
close;
//given data
D=5*10^-2;// in m
b=D/2;
h= 500;// in W/m^2 degree C
k=60;// in W/m^2K
rho=7850;// in kg/m^3
C=460;// in J/kg
alpha=1.6*10^-5;// in m^2/s
T_i=225;// in degree C
T_infinite=25;// in degree C
t=2;// in minute

// Part(i)
Bi= h*b/k;
Fo= alpha*t/b^2;
theta_0_t = 0.18;
// Formula theta_0_t = (T_o-T_infinite)/(T_i-T_infinite)
T_o= theta_0_t*(T_i-T_infinite)+T_infinite;// in degree C
disp(T_o,"Centreline Temperature of the sphere after 2 minutes of exposure in degree C ") ;

// Part(2)
depth= 10*10^-3;// in meter
r=b-depth;// in meter
rBYb=r/b;
theta_x_t = 0.95;
// Formula theta_x_t = (T-T_infinite)/(T_o-T_infinite)
T= theta_x_t*(T_o-T_infinite)+T_infinite;// in degree C
disp(T,"The Temperature at the depth of 1 cm from the surface after 2 minutes in degree C ") ;

// Part (3)
BiSquareFo= Bi^2*Fo;
QbyQo= 0.8;// in kJ
A=4/3*%pi*b^3;
Qo= rho*A*C*(T_i-T_infinite);// in J
Qo=Qo*10^-3;// in kJ
// The heat transffered during 2 minute, 
Q= Qo*QbyQo;// in kJ
disp(Q,"The heat transffered during 2 minutes in kJ")


















