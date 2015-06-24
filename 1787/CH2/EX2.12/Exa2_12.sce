//Exa 2.12
clc;
clear;
close;
//given data
e=1.6*10^-19;//in coulamb
MUh=0.18;//in m^2/V-s
MUe=0.38;//in m^2/V-s
V=10;//in Volts
l=25;//in mm
w=4;//in mm
t=1.5;//in mm
E=V/(l*10^-3);//in
//part (i)
ve=MUe*E;//in m/s
vh=MUh*E;//in m/s
disp(ve,"Drift velocity for electrons in m/s : ");
disp(vh,"Drift velocity for holes in m/s : ");

ni=2.5*10^19;//in m^-3
//part (ii)
SIGMAi=ni*e*(MUe+MUh);//in (ohm-m)^-1
disp(SIGMAi,"Conductivity of Ge(intrinsic) in (ohm-m)^-1 ");
//part (iii)
I=SIGMAi*E*w*10^-3*t*10^-3;//in Ampere
disp(I*10^3,"Total current in mili ampere : ");