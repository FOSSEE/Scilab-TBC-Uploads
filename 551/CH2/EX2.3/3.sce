clc
SG=0.9;
h=1.2; //m
g=9.81; //m/s^2
rho_w=1000; //kg/m^3
rho=SG*rho_w; //kg/m^3
P=rho*g*h/10^3;
disp("Gauge pressure P=")
disp(P)
disp("kN/m^2")