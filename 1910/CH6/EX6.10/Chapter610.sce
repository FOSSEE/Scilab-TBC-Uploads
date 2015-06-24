// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 6, Example 10")
//Wind at a speed of U=36km/hr blows over a flat plate of length,L=6m .If the density and kinematic viscosity of air are rho=1.2kg/m^3 and mu=1.5*10^-5m^2/s respectively.
U=36;
L=6;
rho=1.2;
mu=1.5*10^-5;
//Wind velocity in m/s is Uinf
disp("Wind velocity(Uinf)in m/s is")
Uinf=U*1000/3600
//Reynolds number is given by ReL=L*Uinf/mu
disp("Reynolds number is")
ReL=L*Uinf/mu
//We consider that transition of boundary layer takes place from laminar to turbulent takes place at ReL=5*10^5.
//Therfore the corresponding friction coefficient is given by  CbarfL=(0.074-ReL^(1/5))-(1742/ReL)
disp("Friction coefficient is")
CbarfL=(0.074/ReL^(1/5))-(1742/ReL)
//Drag force on one side of the plate per unit metre width is given by FD=CbarfL*rho*Uinf^2*L/2
disp("Drag force on one side of the plate per unit metre width in Newton is ")
FD=CbarfL*rho*Uinf^2*L/2
//The turbulent boundary layer thickness at the trailing edge is given by delta=L*(0.379/ReL^(1/5))
disp("The turbulent boundary layer thickness at the trailing edge in metre is ")
delta=L*(0.379/ReL^(1/5))















