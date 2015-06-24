//Exa2.22
clc;
clear;
close;
//given data
R=4;//in ohm
d=0.0274;//in cm
d=0.000274;//in meter
rho=10.3;//in miu ohm-cm
rho=10.3*10^-8;//in ohm-m
a=(%pi*d^2)/4;

//Formula R=rho*l/a
l=R*a/rho;
disp("Lenght of wire is : "+string(l)+" meters")