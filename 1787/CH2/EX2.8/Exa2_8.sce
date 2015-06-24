//Exa 2.8
clc;
clear;
close;
//given data
ni=2.5*10^13;//in cm^-3
e=1.6*10^-19;//in coulamb
MUh=1800;//in cm^2/V-s
MUe=3800;//in cm^2/V-s
SIGMAi=ni*e*(MUe+MUh);//in (ohm-cm)^-1
RHOi=1/SIGMAi;//in ohm-cm
disp(SIGMAi,"Intrinsic conductivity in (ohm-cm)^-1 : ");
disp(RHOi,"Intrinsic resistivity in ohm-cm : ");