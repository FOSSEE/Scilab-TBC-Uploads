//Exa 2.18
clc;
clear;
close;
//given data
e=1.6*10^-19;//in coulamb
w=3;//in mm
d=3;//in mm
rho=200;//in Kohm-cm
rho=rho*10^3*10^-2;//in ohm-m
VH=50;//in mV
VH=VH*10^-3;//in Volts
I=10;//in uA
I=I*10^-6;//in Ampere
Bz=0.1;//in Wb/m^2
RH=VH*w*10^-3/(Bz*I)
MUh=RH/rho;//in m^2/V-s
disp(MUh,"Mobility of holes in p-type Si bar in m^2/V-s : ");