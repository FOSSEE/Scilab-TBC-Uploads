//Exa 3.2
clc;
clear;
close
// given data
format('v',13);
d=3;// in cm
d=d*10^-2;//in m
h=20;// in W/m^2K
T1=140;// in degree C
T2=100;// in degree C
L=15*10^-2;// in meter
T_infinite=30;// in degree C
// Let at
x=0;T_0=T1;
x=15;//in cm
x=x*10^-2;// in m
T=100;// in degree C
rho=%pi*d;
A=%pi*d^2/4;
// Formula (T-T_infinite)/(T_0-T_infinite) = %e^-m*x
m=log((T_0-T_infinite)/(T-T_infinite))/x;
// Formula m=sqrt(h*rho/(k*A))
k=h*rho/(m^2*A);
disp(k,"Thermal conductivity of the rod material in W/m-k is ")
