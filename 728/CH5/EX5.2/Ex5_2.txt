//Caption:Calculate the lowest frequency of a rectangular cavity resonator
//Exa:5.2
clc;
clear;
close;
//Given:
c=3*10^10;//in cm/s
a=2;//in cm
b=1;//in cm
d=3; //in cm
disp('Dominant mode is TE101');
m=1;
n=0;
p=1;
f=(c/2)*[(m/a)^2+(n/b)^2+(p/d)^2]^0.5;
disp(f/10^9,'Lowest resonant frequency(in GHz) =');
