//Example 6.6.7;inductance
clc;
clear;
close;
v=220;//in volts
r=0.2;//in ohms
ia=200;//in amperes
f=200;//in hz
di=0.05*ia;//in amperes
e=0;//in volts
d=0.5;//
l=((1-d)*v*d*(1/f))/di;//
disp(l*10^3,"inductance in mH is")
