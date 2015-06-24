clc;
clear all;
u0=4*%pi*1e-7;
H=1e7;//magnetic field strength
X=(-0.9)*1e-6;//magnetic suseptiblity
M=X*H;//magnetization of material
disp('A/m',M,'magnetization of material is=');
B=u0*H;//magnetic flux density
disp('Wb/m^2',B,'magnetic flux density is=');
