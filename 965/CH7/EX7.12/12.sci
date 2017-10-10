clc;
clear all;
disp("Laminar air flow")

L=2;//m length of plate
U=5;//m/s velocity of air
rho=0.815;//kg/m^3 density of air
k=0.03025;// W/(m.C)
Pr=0.6965;// Prandlt number
Ts=120;// degree C
Ta=40;// degree C
v=2.107*10^(-5);//m^2/s kinematic viscosity

Re=U*L/v;// Reynold's number

Nu=0.664*(Re^0.5)*Pr^(1/3);
Nu
h=k*Nu/L;
disp("W/(m^2.C)",h," convective heat transfer coefficient, h =")
Q=h*(L*1)*(Ts-Ta);
disp("W",Q,"Rate of heat transfer =")

