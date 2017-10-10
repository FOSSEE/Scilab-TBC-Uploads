clc;
clear all;
disp("Boundary layer thickness")

L=0.750;//m length of plate
w=0.250;//m width of plate
Re=2*10^5;// Reynold's number
v=1*10^(-4);//m^2/s stokes kinematic viscocity
sg=0.8;// specific gravity of oil
U=5;//m/s velocity of oil
x=L/2;
Re=U*x/v;
delta=5.*x*1000/(Re)^0.5;//mm
disp("mm",delta,"Maximum thickness of boundary layer =")
rho=1000;//kg/m^3
Cfx=0.664/(Re)^0.5;
disp(Cfx,"drag coefficient =")
tauo=Cfx*0.5*rho*sg*U^2;
disp("N/m^2",tauo,"Shear stress at the middle of plate =")
ReL=U*L/v;
Cf=1.328/(ReL)^0.5;
A=L*w;// area of the plate
Fd=Cf*0.5*rho*sg*U^2*A;
disp("N",Fd,"Friction drag on the plate, Fd =")


