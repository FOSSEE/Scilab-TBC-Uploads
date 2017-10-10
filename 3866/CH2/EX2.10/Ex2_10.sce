clear; clc; close;

vgs1=0.140;//obtained from figure
vgs2=0.212;//obtained from figure
k=1.3807*(10^(-23));//boltzmann constant
t=300;//temperature in kelvin
q=1.6*(10^(-19));
n=((vgs2-vgs1)*q)/(k*t*log(10));
s=60*n;
disp(n,'for PMOS device');
disp(s,'slope factor(in mv/decade)');
