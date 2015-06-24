//Example 18.1 : magnetization and flux density
clc;
clear;
close;
//given data :
mu0=4*%pi*10^-7;
H=10^4;// in A/m
Xm=3.7*10^-3;// room temperature
mu_r=1+Xm;
B=mu0*mu_r*H;
M=Xm*H;
disp(B,"the flux density,B(Wb/m^2) = ")
disp(M,"magnetization,M(A/m) = ")
