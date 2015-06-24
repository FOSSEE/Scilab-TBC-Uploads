clc;
clear all
tw = 6; // Time taken by water in seconds
ta = 3.6; // Time taken by alcohol in seconds
rhow= 1e3; // Density of water in Kg per meter cube
rhoa = 800; // Density of alcohol in Kg per cubic meter
n1 = 8.9e-4; // Viscosity of water in Newton second per meter square
n2 = (ta/tw)*(rhoa/rhow)*n1;//The viscosity of alcohol
disp('N.s/m^2',n2,'The viscosity of alcohol is') 
