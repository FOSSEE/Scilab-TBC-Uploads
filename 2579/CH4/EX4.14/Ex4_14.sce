//Ex:4.14
clc;
clear;
close;
f=3*10^3;// frequency in MHz
y=300/f;// wavelength in m
BW=10;// beamwidth in degree
D=140*y/BW;// diameter of a paraboidal reflector antenna in m
printf("The diameter of a paraboidal reflector antenna = %f meter", D);