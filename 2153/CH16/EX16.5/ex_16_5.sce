//Example 16.5 : concentration of impurity
clc;
clear;
close;
format('v',9)
e=1.6*10^-19;//
l=10;//in mm
d=1;//in mm
r=100;//in ohms
up=0.19;//mobilty of electrons in V-sec
a=(%pi*((d*10^-3)^2))/4;//area in m^2
p=((r*a))/(l*10^-3);//resistivity in Ohm-cm
n=((1/(p*e*up)));//concentration in per m^3
disp(n,"impurity concentration is in per m^3")
