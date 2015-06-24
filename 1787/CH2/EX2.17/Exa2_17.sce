//Exa 2.17
clc;
clear;
close;
//given data
e=1.6*10^-19;//in coulamb
ND=10^17;//in cm^-3
Bz=0.1;//in Wb/m^2
w=4;//in mm
d=4;//in mm
Ex=5;//in V/cm
MUe=3800;//in cm^2/V-s
v=MUe*Ex;//in cm/s
v=v*10^-2;//in m/s
VH=Bz*v*d;//in mV
disp(VH,"Magnitude of hall voltage in mV : ");