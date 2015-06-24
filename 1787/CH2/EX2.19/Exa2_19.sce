//Exa 2.19
clc;
clear;
close;
//given data
e=1.6*10^-19;//in coulamb
ND=10^21;//in m^-3
Bz=0.2;//in T
d=4;//in mm
d=d*10^-3;//in meter
J=600;//in A/m^2
n=ND;//in m^-3
//formula : VH*w/(B*I)=1/(n*e)
VH=Bz*J*d/(n*e);//in V
disp(VH*10^3,"Magnitude of hall voltage in mV : ");