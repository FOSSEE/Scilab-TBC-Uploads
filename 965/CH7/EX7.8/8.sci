clc;
clear all;
disp("Laminar flow over plate")

L=5;//m plate length
w=2.5;//m plate width

x=1.2;//m distance from the leading edge of plate
v=15.4*10^(-6);//m^2/s  kinematic viscocity
U=4;//m/s velocity of air
rho=1.208;//kg/m^3 density of air
v=1.47*10^(-5);//m^2/s kinematic viscosity of air

Re=5*10^5;// Reynold's number
x=Re*v/U;// length of plste over which boundary layer is laminar
disp("m",x,"length of plste over which boundary layer is laminar =")
delta=5*x*1000/(Re)^0.5;//mm
disp("mm",delta,"thickness of boundary layer =")
Cfx=0.664/(Re)^0.5;
disp(Cfx,"drag coefficient =")
tau=Cfx*0.5*rho*U^2;// shear stress
disp("N/m^2",tau,"Shear stress =")
Cf=1.328/(Re)^0.5;
A=x*w;//m^2 area of plate
Fd=2*Cf*0.5*rho*A*U^2;
disp("N",Fd,"Total drag force on both sides of plate, =")

