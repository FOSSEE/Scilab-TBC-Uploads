//Exa 3.12
clc;
clear;
close;
//given data
k=30;// in W/mK
h=100;// in W/m^2K
T_infinite=300;// in degree C
d=2*10^-2;// in m
t=1*10^-3;// in m
err=1;// in % of applied temperature difference
// Formula m=sqrt(h*rho/(K*A)) and rho=%pi*d and A=%pi*d*t, putting value of rho and A
m=sqrt(h/(k*t));

// From (T_L-T_infinite)/(T_0-T_infinite)= 1/100 = 1/cosh(m*L)
L=acosh(100)/m;// in meter
L=L*10^3;// in mm
disp("Minimum length os pocket is : "+string(L)+" mm");
