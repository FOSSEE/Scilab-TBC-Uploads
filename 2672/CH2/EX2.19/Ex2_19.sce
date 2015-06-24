//Ex_2_19
clc;
clear;
close;
format('v',7);
//given data :
I=100;//A
r=1;//m
mu0=4*%pi*10^-7;//permeability of air
B=mu0*I/2/%pi/r;//Wb/m^2
disp(B,"Magnetic field produced(Wb/m^2)");
