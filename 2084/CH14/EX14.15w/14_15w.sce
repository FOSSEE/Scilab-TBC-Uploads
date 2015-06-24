//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.15w
//calculation of the tangential force needed to keep the plate moving

//given data
A=10//area(in m^2) of the plate
v=2//speed(in m/s) of the plate
d=1//depth(in m) of the river
// 1 poise = .1 N-s/m^2...unit of viscosity
eta=10^-2*10^-1//coefficient of viscosity(in N-s/m^2)

//calculation
dvbydx=v/d//velocity gradient
F=eta*dvbydx*A//force exerted

printf('the tangential force needed to keep the plate moving is %3.2f N',F)
