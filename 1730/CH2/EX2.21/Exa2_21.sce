//Exa2.21
clc;
clear;
close;
//given data
R=95.5;//in ohm
l=1;//in meter
d=0.08;//in mm
d=d*10^-3;//in meter
a=(%pi*d^2)/4;
//Formula R=rho*l/a
rho=R*a/l;
disp("Resistance of the wire material is : "+string(rho)+" ohm-meter")