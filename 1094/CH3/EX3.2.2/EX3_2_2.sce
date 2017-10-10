//EXA:3.2.2
clc;
clear;
close;
B=0.5 //magnetic field (in wb/m^2)
S=.04 // area of square loop(in m^2)
theta_1=0 //inclination
flux_1=B*S*cosd(theta_1)
disp(flux_1,'flux_1 (in wb)=')
theta_2=60
flux_2=B*S*cosd(theta_2)
disp(flux_2,'flux_2 (in wb)=')
theta_3=90
flux_3=B*S*cosd(theta_3)
disp(flux_3,'flux_3 (in wb)=')