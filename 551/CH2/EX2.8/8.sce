clc
SG=0.8;
rho_H2O=1000; //kg/m^3
g=9.81; //ms^2
h=0.17; //m
Patm=1.01325; //bar
rho=SG*rho_H2O; //kg/m^3
P_liq=rho*g*h/10^5; //bar
P_gas=Patm - P_liq;
disp("gas pressure= ")
disp(P_gas)
disp("bar")