clc;
clear all;
Rh=-0.55e-10;//hall coefficient of Cu in m^3/(A*s)
sigma=5.9e7;//conductivity of Cu in ohm^-1*m^-1
dm=-Rh*sigma;//drift mobility
disp('m^2/(V^-1*s^-1)',dm,'drift mobility')
