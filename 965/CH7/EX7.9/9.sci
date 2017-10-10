clc;
clear all;
disp("Laminar flow over plate")

L=0.5;//m plate length
w=0.6;//m plate width
U=4;//m/s velocity of air
rho=1.24;//kg/m^3 density of air
v=1.5*10^(-5);//m^2/s kinematic viscosity of air

ReL=U*L/v;// Reynold's number
delta=4.795*L*1000/(Re)^0.5;//mm
disp("mm",delta,"Boundary layer thickness =")
x=0.25;
Re=U*x/v;// Reynold's number
Cfx=0.654/(Re)^0.5;
disp(Cfx,"drag coefficient =")
tau=Cfx*0.5*rho*U^2;// shear stress
disp("N/m^2",tau,"Shear stress at 250 mm from  leading edge, =")
Cf=1.31/(ReL)^0.5;
A=L*w;//m^2 area of plate
Fd=Cf*0.5*rho*A*U^2;
disp("N",Fd,"drag force on one side of plate, =")
