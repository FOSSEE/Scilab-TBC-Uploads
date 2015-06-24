clc;
clear all;
m0=9.1*1e-31;
me=0.12*m0;
mp=0.28*m0;
Eg=0.67*1.6*1e-19
k=1.38*1e-23;//boltzman constant
h=6.62*1e-34;//plank's constant
T=300;
ni=2*((2*%pi*k*T/h^2)^(3/2))*((me*mp)^(3/4))*exp(-Eg/(2*k*T));//intrinsic carrier concentration
disp('m^-3',ni,'intrinsic carrier concentration is=');
