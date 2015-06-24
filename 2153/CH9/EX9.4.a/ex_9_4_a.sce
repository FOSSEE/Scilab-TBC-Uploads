// Example 9.4.a: Temperature
clc;
clear;
close;
format('v',6)
E=350;// in GN/m^2
Y=2;// in J/m^2
C=2;// in micro meter
sg=sqrt((2*E*10^9*Y)/(%pi*C*10^-6));// IN mn/M^2
e=10^-2;// per second
T=173600/(round(sg*10^-6)-20.6-61.3*(log10(e)));// in kelvin
disp(T,"temperture in kelvin for ductile to brittle transition at a strain rate of 10^-2 per second")
