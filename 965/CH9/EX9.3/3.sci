clc;
clear all;
disp("Volatge at burnout point")
d=0.001;//m diameter of wire
I=190;//amp
L=0.4;//m length of wire
rhol=958.4;//kg/m^3
rhov=0.5955;//kg/m^3
hfg=2257*10^3;//J/kg
s=58.9*10^(-3);// N/m
g=9.81;//m/s^2
qsc=0.18*rhov^0.5*hfg*(g*s*(rhol-rhov))^0.25;// at burnout i.e. points of critical flux
A=%pi*d*L;
Q=A*qsc;
Vb=Q/I;// V
disp("V",Vb,"Voltage at burnout point =")
