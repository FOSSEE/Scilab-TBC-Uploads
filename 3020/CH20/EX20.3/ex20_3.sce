clc;
clear all;
H=1E6;//magnetic field intensity in A/m
X=-0.8e-5;//susceptibility
u0 = 4e-7*%pi;
M=X*H;//magnetization in A/m
B=u0*(M+H);//flux density in Wb/m^2;
disp('A/m',M,'magnetization is:')
disp('Wb/m^2',B,'flux density is:')
