// Exa 8.5
clc;
clear;
close;
// Given data
l=2.5;// in cm
l=l*10^-2;// in meter
d=.5;// in cm
d=d*10^-2;// in meter
S= 20;// in cm
S= S*10^-2;// in meter
Va= 2500;// in volts
// Formula y = OC*AB/OB = (S*d/2)/(l/2)
y = (S*d/2)/(l/2);// in meter
disp(y*10^2,"Deflection in cm")
