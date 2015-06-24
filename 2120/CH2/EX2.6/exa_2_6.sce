// Exa 2.6
clc;
clear;
close;
// Given data
p1= 0.98;// in bar
p2= 0.6;// in bar
v1= 0.45;// in m^3/kg
// Applying Boyle's law
v2= p1*v1/p2;// in m^3/kg
rho2= 1/v2;// in kg/m^3
disp(rho2,"The density of the gas under the changed condition in kg/m^3 is : ")
