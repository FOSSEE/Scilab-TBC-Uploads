//Exa 6.8
clc;
clear;
close;
//given data
a=5.6*10^-6/2;//in meter
k=12;//unitless
epsilon_o=8.86*10^-12;//in F/m
epsilon=k*epsilon_o;//in F/m
ND=10^15;//in cm^-3
ND=10^15*10^6;//in m^-3
e=1.6*10^-19;//in Coulamb
VP=e*ND*a^2/(2*epsilon);//in Volt
disp(VP,"Pinch off voltage in volts : ");