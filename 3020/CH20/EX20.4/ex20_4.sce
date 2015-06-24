clc;
clear all;
H=1800;//magnetizing field intensity in A/m
phy=3e-5;//magnetic flux in Wb
A=0.2e-4;//cross section area
B=phy/A;//flux density
u=B/H;//permiability
disp('Wb/m^2',B,'flux density is')
disp('H/m',u,'permiability is:')
