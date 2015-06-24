//Exa 5.13
clc;
clear;
close;
//given data
Cp=0.138;// in KJ/kg-K
m=8.33;// in kg/sec
Pr=0.0238;
k=8.7;// in W/mk
d=1.5*10^-2;// in m
miu=1.5*10^-3;// in kg/ms

Re=4*m/(%pi*miu*d);
Pe=Re*Pr;
// Nu = h*d/k = 7+0.025*Pe^0.8
h= (7+0.025*Pe^0.8)*k/d;// in W/m^2 degree C
disp(h,"Heat transfer coefficient in W/m^2 degree C");

