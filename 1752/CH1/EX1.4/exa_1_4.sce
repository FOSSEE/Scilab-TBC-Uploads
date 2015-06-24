//Exa 1.4
clc;
clear;
close
// given data
t_s=100;// in degree C
t_w=80;// in degree C
d=2*10^-3;//in m
h=3000;// in W/m^2 degree C
L=100;//in mm
L=L*10^-3;// in meter
A=%pi*d*L;
// Heat loss by convection = Electric power supplied
// Formula h*A*(t_s-t_w) = Q
Q= h*A*(t_s-t_w);
disp(Q,"Electric power supplied in watt is : ")
