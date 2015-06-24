//Exa 4.3
clc;
clear;
close;
//Given Data :
format('v',7);
a=1.5;//in cm^2
d=8;//in meter(spacing)
r=39.8/2;//in mm
l=1*10^5;//in cm
rho=1.73*10^-6;//in ohm-cm
R=rho*l/a;//in ohm/km
disp(R,"Resistance of line(in ohm/km) :");
ds=0.77888*r;//in cm
L=0.2*log(d/(ds*10^-3));//in mH/km/phase
disp(L,"Inductance per phase for a 1 km line (in mH/km) :");