//Caption:Calculate the resonant frequency of a circular cavity resonator
//Exa:5.4
clc;
clear;
close;
//Given:
c=3*10^10;//in cm/s
a=3;//in cm
b=2;//in cm
d=4;//in cm
//For TE101:
m=1;
n=0;
p=1;
f=(c/2)*[(m/a)^2+(n/b)^2+(p/d)^2]^0.5;
disp(f/10^9,'Resonant frequency(in GHz) =');
