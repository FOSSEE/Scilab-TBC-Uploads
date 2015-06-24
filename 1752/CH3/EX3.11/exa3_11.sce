//Exa 3.11
clc;
clear;
close;
//given data
k=20;// in W/mK
T_L=150;// in degree C
T_0=70;// in degree C
L=12*10^-2;// in meter
h=80;// in W/m^2K
t=3*10^-3;// in m
// Formula m=sqrt(h*rho/(K*A)) and rho=%pi*d and A=%pi*d*t, putting value of rho and A
m=sqrt(h/(k*t));
// Formula (T_L-T_infinite)/(T_0-T_infinite)= 1/cosh(m*L)
T_infinite=(T_L-T_0/cosh(m*L))/(1-1/cosh(m*L));
PercentageError=(T_infinite-T_L)*100/T_infinite;
disp("Percentage Error is : "+string(PercentageError)+" %");
