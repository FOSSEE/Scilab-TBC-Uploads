//Exa 2.9
clc;
clear;
close;
//given data
SIGMAi=2.12766;//in S/m
RHOi=0.47;//in ohm-m
MUh=0.19;//in m^2/V-s
MUe=0.39;//in m^2/V-s
e=1.6*10^-19;//in coulamb
//Formula : SIGMAi=ni*e*(MUe+MUh)
ni=SIGMAi/(e*(MUe+MUh));//in m^-3
E=10^4;//in V/m
vn=MUe*E;//in m/s
vh=MUh*E;//in m/s
disp(ni,"Density of electron in intrinsic material in m^-3 : ");
disp(vn,"Drift velocity for electrons in m/s : ");
disp(vh,"Drift velocity for holes in m/s : ");