//Exa 9.4
clc;
clear;
close;
format('v',9)
//given data
h_fg=2400*10^3;// in J/kg
rho=993;// in kg/m^3
rho_v=0.0563;// in kg/m^3
t_mf=(40+30)/2;// in degree C
k=0.625;// in W/mK
miu=728*10^-6;// in kJ/m-s
x=0.25;
T_sat=40;// in degree C
T_s=30;// in degree C
g=9.81;

// (a) Thickness of condensate film
delta=[  4*k*(T_sat-T_s)*miu*x/(rho*(rho-rho_v)*g*h_fg)     ]^(1/4);// in meter
disp(delta*10^3,"Thickness of condensate film in mm");

//(b) Local value of heat transfer coefficient
hx=k/delta;// in W/m^2
L=0.5;// in m
hm=4/3*(L/x)^(1/4)*hx;
disp(hm,"Average heat transfer coefficient in W/m^2");
// The heat transfer rate
A=0.5*0.5;// in m^2
q=hm*A*(T_sat-T_s);// in watt
disp(q*10^-3,"The heat transfer rate in kW")

// (c) 
theta=45;// in degree
h_vertical=hm;
h_inclined=h_vertical*(sind(theta))^(1/4);
disp(h_inclined,"Average heat transfer coefficient when plate is inclined at 45 degree in W/m^2K");
