clc;
clear all;
H=1E4;//magnetic field intensity in A/m
X=3.7E-3;//susceptibility
u0 = 4e-7*%pi;
M=X*H;//magnetization in A/m
B=u0*(M+H);//flux density in Wb/m^2;
disp('A/m',M,'magnetization is:')
disp('Wb/m^2',B,'flux density is:')
