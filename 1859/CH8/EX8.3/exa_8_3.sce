// Exa 8.3
clc;
clear;
close;
// Given data
l=20;// in mm
l=l*10^-3;// in meter
d=5;// in mm
d=d*10^-3;// in meter
S= 0.20;// in meter
Va= 2500;// in volts
DeflectionSensitivity= l*S/(2*d*Va);// in m/V
disp(DeflectionSensitivity*10^3,"Deflection Sensitivity in mm/V");
