// Exa 8.4
clc;
clear;
close;
// Given data
l=2.5;// in cm
l=l*10^-2;// in meter
d=1;// in cm
d=d*10^-2;// in meter
Va= 1000;// in volts
theta= 1;// in degree
// Formula tand(theta) = l*Vd/(2*d*Va)
Vd= 2*d*Va/l*tand(theta);// in volts
disp(Vd,"Voltage required across the deflection plates in volts")
