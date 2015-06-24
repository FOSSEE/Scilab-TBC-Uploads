clc;
clear all;
rho=7860;//density of gadolinium
m=157.25;//atomic weight of gadolinium
n=64;//atomic number
Na=6.022e26;//avagadra's number
u0=4*%pi*1e-7;//permiability of vacume
b=9.27e-24;
N=rho*Na*8*b/m;//saturation magnetization
disp('A/m',N,'saturation magnetization is:')
