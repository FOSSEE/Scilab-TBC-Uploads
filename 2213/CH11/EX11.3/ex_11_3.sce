//Example 11.3: Sag
clc;
clear;
close;
//given data :
l=30;// in meter
w1=0.9;// average weight of catenary wire in kg/m
w2=1.2//average weight of trolley wire in kg/m
w3=(20/100)*w2//average weight of dropper and fittings in kg/m
w=w1+w2+w3;
T=1000;// in kg
del=((w*l^2)/(2*T));
disp(del,"sag(m) = ")
