//Example 7.2
clc;
clear;
close;
format('v',7);
//Given data :
mu=0.009;//kg-sec/m^2
rho=0.89;//sp. gravity
Q=4*10^-3;//m^3/sec
d=30/1000;//meter
v=mu/rho;//m^2/s
disp(v,"Kinematic viscosity in m^2/sec : ");
A=%pi*d^2/4;//m^2
vm=Q/A;//m/s
Rn=vm*d/v;//Reynolds no.
disp(Rn,"Reynolds number for flow  : ");
disp("This is laminar flow because Rn no. is less than 2000.");
