clc;
clear;
format('e',11);
phi=45;
f=10*10^6;
Ntb=(f*cosd(phi))^2/81*10^-6;
disp(Ntb,"The electron density(in electrons/cc)=");
