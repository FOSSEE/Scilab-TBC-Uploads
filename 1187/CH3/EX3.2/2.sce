clc

u_A=1.35; // m/s
d_A=0.225; // m
d_B=0.150; // m
d_C=0.150; // m
d=5.6; //m
friction=2.5; // kW
power_req=12.7; // kW

rho=1000; // kg/m^3
rho_m=13560; // kg/m^3

g=9.81; // m/s^2

pC=35000; // Pa
pA=rho_m*g*(-d_B);

Area_A=%pi*d_A^2/4;
Area_B=%pi*d_B^2/4;
Area_C=%pi*d_C^2/4;

u_B=u_A*(Area_A/Area_B);
u_C=u_A*(Area_A/Area_C);

// Energy_added_by_pump/time = (Mass/time)*((pC-pA)/rho+(u_C^2-u_A^2)/2+g*(zC-zA))

Energy_added = Area_A*u_A*(pC-pA+rho/2*(u_C^2-u_A^2)+rho*g*d)/1000+friction;

Efficiency=Energy_added/power_req*100;

disp("Overall efficiency of the pump =")
disp(Efficiency)
disp("%")