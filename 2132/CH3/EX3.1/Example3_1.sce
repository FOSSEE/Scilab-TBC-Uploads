//Example 3.1
clc;
clear;
close;
format('v',7);
//Given data :
D=30*10^-2;//in m
F=9810;//in N
A=%pi*D^2/4;//in m^2
p=F/A;//in N/m^2 or Pa
p=p/1000;//kPa
disp(p,"Intensity of pressure at the bottom of container in kPa : ");
