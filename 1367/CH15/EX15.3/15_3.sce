//Find Specific Resistance
//Ex:15.3
clc;
clear;
close;
l=200;//in m
r=21;//in ohm
d=0.44*10^-3;//in m
a=3.14*(d/2)^2;//area in sq m
p=r*a/l;//in ohm-m
disp(p,"Specific Resistance (in ohm-m) = ");