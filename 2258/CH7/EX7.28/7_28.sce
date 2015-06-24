clc();
clear;
// To calculate the mobility and density of charge carrier
RH=3.66*10^-4;    //hall coefficient in m^3/c
rho_i=8.93*10^-3;    //resistivity in ohm m
e=1.6*10^-19;
nh=1/(RH*e);
mew_h=1/(rho_i*nh*e);
printf("density of charge carriers in m^3 is");
disp(nh);
printf("mobility of charge carriers is %f m^2/Vs",mew_h);
