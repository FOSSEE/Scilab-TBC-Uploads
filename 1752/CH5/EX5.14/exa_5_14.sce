//Exa 5.14
clc;
clear;
close;
//given data
rho=887;// in kg/m^3
Pr=0.026;
k=25.6;// in W/mk
d=2.5*10^-2;// in m
miu=0.58*10^-3;// in kg/ms
V=3;// in m/s

Re=rho*V*d/(miu);
Pe=Re*Pr;
Nu = 4.8+0.015*Pe^0.85*Pr^0.08
h= Nu*k/d;// in W/m^2 degree C
disp(h,"Heat transfer coefficient in W/m^2 degree C");

//Note: There is some difference in coding and book answer because they did not take aqurate calculation